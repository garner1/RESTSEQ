#!/usr/bin/env bash

################################################################################
# clear
# DEFINING VARIABLES
experiment=$1	     # XZ82
genome=$2	     # hg19
mode=$3		     # PE or SE
barcode_file=$4	     # ~/Work/pipelines/restseq/pattern/barcode-cutsite_18
cutsite=$5	     # the restriction cutsite
umi_missmatch=$6     # threshold on the UMI mismatch for filtering
r1=$7		     # full path to r1 fastq.gz file
r2=$8	             # full path to r2 fastq.gz file
numbproc=32
quality=30	     # filter out read with mapping quality less than this
################################################################################

# PREPARE DIRECTORY STRUCTURE
datadir=$HOME/Work/dataset/reduced_sequencing && mkdir -p $datadir/$experiment 
in="$datadir"/"$experiment"/indata && mkdir -p $in
out="$datadir"/"$experiment"/outdata && mkdir -p $out
aux="$datadir"/"$experiment"/auxdata && mkdir -p $aux
refgen=$HOME/igv/genomes/$genome.fasta # full path to reference genome

echo
echo Processing $experiment
################################################################################

# ~/Work/pipelines/restseq/binDev/module/quality_control.sh $r1 $numbproc $out

################################################################################

# USE EITHER prepare_files.sh OR parallel_scan.sh (in case of multiple barcodes)
bash ./module/parallel_scan.sh $cutsite $in $mode $barcode_file $r1 $r2 

################################################################################

rm -fr "$out"/* "$aux"/* 	# !!!clean outdata and auxdata directories!!!!

i=0
for barcode in $( cat $barcode_file | awk '{print substr($1,1,8)}' ) # !!!!KEEP ALL BARCODES!!!!
do
    echo `expr $i + 1` $barcode
    i=`expr $i + 1`

    if [ "$mode" == "PE" ]
    then
    	bwa mem -v 1 -t $numbproc $refgen "$in"/barcode_"$barcode".fq "$in"/barcode_"$barcode"-r2.fq > "$out"/"$barcode".sam
    fi
    if [ "$mode" == "SE" ]
    then
    	bwa mem -v 1 -t $numbproc $refgen "$in"/barcode_"$barcode".fq > "$out"/"$barcode".sam
    fi

    count=$(samtools view -S "$out"/"$barcode".sam | head -1 | wc -l)
    if [ $count -ne 0 ]; then 
	if [ "$mode" == "PE" ]
	then
	    samtools view -h -f 0x0040 -q $quality "$out"/"$barcode".sam > "$out"/"$barcode".bam # only keep first mate in pair and filter wrt quality
	fi
	if [ "$mode" == "SE" ]
	then
	    samtools view -h -Sb -q $quality "$out"/"$barcode".sam > "$out"/"$barcode".bam # only keep first mate in pair and filter wrt quality
	fi
    	$PWD/module/umi_joining.sh $in $aux $barcode "$out"/"$barcode".bam "$out"/withUMI.bam

    	echo "Filter UMIs ..."
	bedtools bamtobed -i "$out"/withUMI.bam | sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 -k2,2n > "$aux"/myfile_"$barcode" # convert bam2bed sorted wrt to chr and start
	if [ -s "$aux"/myfile_"$barcode" ]; then # check if file is not empty
	    bedtools closest -a "$aux"/myfile_"$barcode" -b ~/Work/pipelines/data/"$cutsite".bed -d | 
	    LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k4,4 | sed 's/\/1//' > "$aux"/output_"$barcode" # find the closest cutsite 
	    	    
	    samtools view "$out"/withUMI.bam | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 | # select first mate of pairs
	    LC_ALL=C join -1 1 -2 4 - "$aux"/output_"$barcode"| # join WRT to read ID
	    tr " " "\t" | awk '{FS=OFS="\t";print $(NF-8),$(NF-7)+1,$(NF-6)+1,$(NF-4),$(NF-5),$(NF-9),$1,$(NF-3),$(NF-2),$(NF-1),$NF}' > "$out"/read_strand_qScore_UMI_ID_cutsite_dist__"$barcode".bed
	    
	    cut -f-4,6 "$out"/read_strand_qScore_UMI_ID_cutsite_dist__"$barcode".bed | 
	    datamash -s -g 1,2,3,4,5 count 1,2,3,4,5 | cut -f-6 > "$out"/read_strand_UMI_PCRcount__"$barcode".bed

	    rm -f chr*
	    cat "$out"/read_strand_UMI_PCRcount__"$barcode".bed | grep -v "^\." | awk '{print >> $1; close($1)}' -  # split file according to chromosome

    	    chr_list=$(cut -f1 "$out"/read_strand_UMI_PCRcount__"$barcode".bed | grep -v "_\|^\." | LC_ALL=C sort -u)
	    parallel "python $PWD/module/umi_filtering.py $PWD/{} $umi_missmatch {} {}_out.bed" ::: $(echo $chr_list)
    	    cat chr*_out.bed | tr -d "," | tr -d "'" | tr -d "[" | tr -d "]" | tr " " "\t" | grep -v "_" | 
	    LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1.4n -k2,2n > "$out"/read_strand_UMI_PCRcount__"$barcode".bed
	    rm -f chr*

	    cat "$out"/read_strand_UMI_PCRcount__"$barcode".bed | datamash -s -g 1,2,3,4 count 1,2,3,4 | cut -f-5 > "$out"/read_strand_CELLcount__"$barcode".bed
	    
	    samfile="$out"/"$barcode".sam
	    uniqueReads="$out"/read_strand_UMI_PCRcount__"$barcode".bed
	    uniqueLocations="$out"/read_strand_UMI_CELLcount__"$barcode".bed
	    bash ./module/make_summary.sh $datadir $experiment $barcode $samfile $uniqueReads $uniqueLocations 
    	fi
    fi
done

rm -fr "$in"/barcode_* "$out"/*.{sam,bam} "$aux"/* 	# !!!clean outdata and auxdata directories!!!!
 
