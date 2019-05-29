# CUTseq
Pipeline for CUTseq 

cd ./bin

bash main.sh {samplename} {human||mourse} {SE||PE} ./pattern/{BARCODE}-{CUTSITE}_{samplename} {CUTSITE} {fullpath2 fastq.gz file}

Example:

bash main.sh XZ167BICRO152 human SE ./pattern/CATCACGC-CATG_XZ167BICRO152 CATG ~/XZ167.fastq.gz

