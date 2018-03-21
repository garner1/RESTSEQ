#!/usr/bin/env bash

parallel "samtools merge merged_XZ{}.bam XZ{}_BICRO65/outdata/*.deduplicated.bam XZ{}/outdata/*.deduplicated.bam" ::: 74 75 76 77 78

# parallel "samtools sort merged_XZ{}.bam -o temporary_{}.bam" ::: 74 75 76 77 78
# parallel "samtools index temporary_{}.bam" ::: 74 75 76 77 78

# parallel --memfree 50G "umi_tools dedup -I temporary_{}.bam -S {}_merged.deduplicated.bam --edit-distance-threshold 2 -L {}_group.log" ::: 74 75 76 77 78

# parallel "bedtools bamtobed -i {}_merged.deduplicated.2.bam > XZ{}_merged.bed" ::: 74 75 76 77 78

# file=$1
# echo 'File name:'$file
# echo '#################################'
# echo '#UMI with a ref-cutsite:' `samtools view "$file" | wc -l`
# echo '#unique sites:' `samtools view "$file" |  cut -f3,4 | LC_ALL=C sort -u | wc -l`
# echo '#################################'
