# command04.sh
# 1.  Extract the distinct genomic feature types (e.g. gene, exon, transcript ...) from the GTF file.
#     Sort and count the values alphabetically and save them to result04_1.txt.
grep -v "^#" ~/exercise02/data/d_melanogaster.genes.gtf | awk '{print $3}' | sort | uniq -c | awk '{print $2"\t"$1}' > ~/exercise02/result/result04_1.txt
# 2. Find the line in which the feature type is "gene" and the gene name is "Gfat1".
#    Save the line to **result04_2.txt**.
grep -v "^#" ~/exercise02/data/d_melanogaster.genes.gtf | awk '$3 == "gene" && $11 == "gene_name" && $12 ~ /Gfat1/ {print $0}' > ~/exercise02/result/result04_2.txt

# 3. The "Gfat1" gene has multiple transcripts. Find all transcripts and store the
#    attribute "transcript_name" (e.g., transcript_name "Gfat1-RN";) to result04_3.txt.
grep -v "^#" ~/exercise02/data/d_melanogaster.genes.gtf | awk -F "\t" '$3=="transcript" && $9~"Gfat1" {print $9}' | tr -d "\";" | awk '{print $12}' > ~/exercise02/result/result04_3.txt
# 4. Count the number of exons of each transcript from "Gfat1" gene and save the count to result04_4.csv.
#    Write the transcript names as column 1 and the count of exons as column 2.
grep -v "^#" ~/exercise02/data/d_melanogaster.genes.gtf | awk -F "\t" '$3=="exon" && $9~"Gfat1" {print $9}' | tr -d "\";" | awk '{print $14}' | sort | uniq -c | awk '{print $2","$1}' > ~/exercise02/result/result04_4.csv

# 5. Calculate the total exon length of transcripts from "Gfat1" gene and save the result to result04_5.csv.
#    Write the transcript names as column 1 and the length of exons as column 2.
#    The position of GTF is 1-based which means the 100nt-length region from 1st
#    position to 100th position in chromosome 1 is represented as "chr1 1 100".
#    You should consider this when calculating the length from position indices.
grep -v "^#" ~/exercise02/data/d_melanogaster.genes.gtf |
awk -F"\t" '$3=="exon"&&$9~"Gfat1" {print $5-$4+1,$9}' | tr -d "\";" | 
awk 'BEGIN {OFS=","} {arr[$15]+=$1} END {for (x in arr) {print x,arr[x]}}' > ~/exercise02/result/result04_5.csv