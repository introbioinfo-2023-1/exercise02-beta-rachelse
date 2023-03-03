#!/usr/bin/awk -f
NR == FNR { old[$1] = $2; next; }
$1 in old { print $0"\t"old[$1]; }


