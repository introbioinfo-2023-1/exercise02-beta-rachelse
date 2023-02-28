## command05.sh
# 1. Download E. coli GTF file and unzip it as "d_melanogaster_old.genes.gtf" in data directory. (No result file)
# Link: Link: ftp://ftp.ensembl.org/pub//release-89/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.89.gtf.gz

# 2. Count the genes in the positive (+) and negative (-) strand of old D. melanogaster genome
#    and save the counts to result05_2.csv.

# 3. The gtf file is keeping updated to cover new discoveries.
#    Let's compare the changes in the number of genomic features (third column in gtf files like exon, gene, CDS, etc).
# 
# 3-1. Count the distinct genomic feature (exon, gene, and others) types of d_melanogaster_old.genes.gtf.
#      Sort the values by default order and write them in result05_3_1.txt following the format of the example of command04-1.
#
# 3-2. Check join.awk in the command directory. It is from the lecture slide (21th of Linux 2 slides). 
# You have to make a small change in the code to follow the printing format of the example of command05-3-3.
# Your changes in join.awk should be pushed.
#
# 3-3. Join the result05_3_1.txt and result05_3_2.txt using your join.sh and print the result in result05_3_3.txt