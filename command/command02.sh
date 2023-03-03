# command02.sh
# The first few lines of GTF file begin with "#", and these lines are called as "header lines".
# 1. Use a command to extract only the header line from a GTF file
#    and store the result to **result02_1.txt** in the "result" directory.
grep -r "^#" ~/exercise02/data/d_melanogaster.genes.gtf > ~/exercise02/result/result02_1.txt
# 2. Count the number of lines in the GTF file except header lines and save the number to result02_2.txt.
grep -v "^#" data/d_melanogaster.genes.gtf | wc -l > ~/exercise02/result/result02_2.txt
# 3. Count the number of header lines in the GTF file and save the number to result02_3.txt.
grep -r "^#" data/d_melanogaster.genes.gtf | wc -l > ~/exercise02/result/result02_3.txt