#!/usr/bin/env bash
pattern=/home/garner1/Work/pipelines/restseq/pattern
data=/home/garner1/Work/dataset/restseq

# exp=NC53; 
# RUN=AVO41; MODE=PE; CUTSITE=AAGCTT; 
# # cat /media/bicroserver-seq/Hubrecht/"$RUN"/"$exp"*R1*.fastq.gz > "$data"/"$exp"_"$RUN"_R1.fastq.gz;
# # cat /media/bicroserver-seq/Hubrecht/"$RUN"/"$exp"*R2*.fastq.gz > "$data"/"$exp"_"$RUN"_R2.fastq.gz;
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2 "$data"/"$exp"_"$RUN"_R?.fastq.gz;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC55; 
# RUN=AVO41; MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2 "$data"/"$exp"_"$RUN"_R?.fastq.gz;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC56;
# RUN=AVO41; MODE=SE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2 "$data"/"$exp"_"$RUN"_R?.fastq.gz;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC57;
# RUN=AVO41; MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2 "$data"/"$exp"_"$RUN"_R?.fastq.gz;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC421;
# RUN=AVO33; MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC432;
# RUN=AVO33; MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC6466;
# MODE=PE; CUTSITE=GAATTC; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ1;
# MODE=PE; CUTSITE=GAATTC; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ4;
# MODE=SE; CUTSITE=GAATTC; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# # #############################################################################################################

# exp=NC24; 
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC25;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC26;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=NC87;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ13;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ14;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ16;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ17;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ18;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ19;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ20;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ21;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ22;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ23;
# MODE=SE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ24;
# MODE=SE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=XZ30;
# MODE=PE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=BICRO22_XZ16;
# MODE=SE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_XZ16 "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=BICRO22_XZ17;
# MODE=SE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_XZ17 "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

# exp=BICRO22_XZ32;
# MODE=SE; CUTSITE=AAGCTT; 
# # ./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_XZ32 "$CUTSITE" 2;
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
# cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
# wait $pid1
# wait $pid2
# wait $pid3
# wait $pid4

exp=NC88;
MODE=PE; CUTSITE=AAGCTT; 
./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
wait $pid1
wait $pid2
wait $pid3
wait $pid4

exp=NC89;
MODE=PE; CUTSITE=AAGCTT; 
./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
wait $pid1
wait $pid2
wait $pid3
wait $pid4

exp=NC101;
MODE=PE; CUTSITE=AAGCTT; 
./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
wait $pid1
wait $pid2
wait $pid3
wait $pid4

exp=NC105;
MODE=PE; CUTSITE=AAGCTT; 
./main.sh "$exp" hg19 1 10000000 "$MODE" ~/Work/pipelines/restseq/pattern/barcode-cutsite_"$exp" "$CUTSITE" 2;
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_R.dat & pid1=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "+"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_R.dat & pid2=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 == 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__eq0_L.dat & pid3=$!
cat "$data"/"$exp"/outdata/cutsite_dist_strand_qScore_UMI_ID_start__*_q1.bed | awk '$4 != 0 && $5 == "-"' | wc -l > "$data"/"$exp"/outdata/enzyme_specificity__neq0_L.dat & pid4=$!
wait $pid1
wait $pid2
wait $pid3
wait $pid4

























