## command05.sh
# 1. Download old Drosophila melanogaster GTF file and unzip it as "d_melanogaster_old.genes.gtf" in data directory. (No result file)
# Link: ftp://ftp.ensembl.org/pub/release-87/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.87.gtf.gz
wget -O ~/exercise02/data/d_melanogaster_old.genes.gtf.gz "ftp://ftp.ensembl.org/pub/release-87/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.87.gtf.gz"
gunzip ~/exercise02/data/d_melanogaster_old.genes.gtf.gz

# 2. Count the Coding Sequences in the positive (+) and negative (-) strand of old D. melanogaster genome
#    and save the counts to result05_2.csv.
grep -v "^#" ~/exercise02/data/d_melanogaster_old.genes.gtf | 
awk 'BEGIN {OFS=","} $3=="CDS" {arr[$7]+=1} END {print arr["+"],arr["-"]}' > ~/exercise02/result/result05_2.csv

# 3. The gtf file is keeping updated to cover new discoveries.
#    Let's compare the changes in the number of genomic features (exon, gene, CDS, etc).
# 
# 3-1. Count the distinct genomic feature types of d_melanogaster_old.genes.gtf.
#      Sort the values by default order and write them in result05_3_1.txt following the format of the example of command04-1.
#
grep -v "^#" ./data/d_melanogaster_old.genes.gtf | awk '{print $3}' |
sort | uniq -c | awk '{OFS="\t"}{print $2,$1}' > ~/exercise02/result/result05_3_1.txt
# 3-2. Check join.awk in the command directory. It is from the lecture slide (21th of Linux 2 slides). 
# You have to make a small change in the code to follow the printing format of the example of command05-3-3.
# Your changes in join.awk should be pushed.

# 3-3. Join the result05_3_1.txt and result05_3_2.txt using your join.sh and print the result in result05_3_3.txt
~/exercise02/command/join.awk ~/exercise02/result/result05_3_1.txt ~/exercise02/result/result04_1.txt > ~/exercise02/result/result05_3_3.txt