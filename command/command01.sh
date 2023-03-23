# command01.sh
# 1. Download the GTF file of Drosophila melanogaster and save it as d_melanogaster.genes.gtf.gz in data directory. (No result file)
#    Link: "ftp://ftp.ensembl.org/pub/release-109/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.32.109.gtf.gz"
wget -O ~/exercise02/data/d_melanogaster.genes.gtf.gz "ftp://ftp.ensembl.org/pub/release-109/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.32.109.gtf.gz"

# 2. Extract the gzip-compressed GTF file. (No result file)
gunzip ~/exercise02/data/d_melanogaster.genes.gtf.gz
