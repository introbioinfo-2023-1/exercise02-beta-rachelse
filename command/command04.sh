# command04.sh
# 1.  Extract the distinct genomic feature types (e.g. gene, exon, transcript ...) from the GTF file.
#     Sort the values alphabetically and save them to result04_1.txt.

# 2. Find the line in which the feature type is "gene" and the gene name is "Raf".
#    Save the line to **result04_2.txt**.

# 3. The "Raf" gene has multiple transcripts. Find all transcripts and store the
#    attribute "transcript_name" (e.g., transcript_name "Raf-RE";) to result04_3.txt.

# 4. Count the number of exons of each transcript from "Raf" gene and save the count to result04_4.csv.
#    Write the transcript names as column 1 and the count of exons as column 2.

# 5. Calculate the total exon length of transcripts from "Raf" gene and save the result to result04_5.csv.
#    Write the transcript names as column 1 and the length of exons as column 2.
#    The position of GTF is 1-based which means the 100nt-length region from 1st
#    position to 100th position in chromosome 1 is represented as "chr1 1 100".
#    You should consider this when calculating the length from position indices.