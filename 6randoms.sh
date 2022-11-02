#!/bin/bash
#
# 6randoms.sh by A.B.
# This BASH script collects from qrng 6 random hex values 1-255 
# and creates the corresponding list of 6 numbers in a scale 1-90
# any duplicate value is replaced.
# Output file name: 6randomnums.txt
#
TMPFILE=rndtmp.txt
rm -f $TMPFILE
OUTFILE=6randomnums.txt
#
echo -e "Generating new list of 6 numbers... Please wait."
#
for i in {1..6}
do  DATENOW=$(date +%s%3N)
	ONEHEX=0x$(curl -s -L -A 'Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/81.0' 'https://qrng.anu.edu.au//wp-content/plugins/colours-plugin/get_one_hex.php?_=$DATENOW')
	ONEDEC=$(printf '%d\n' $ONEHEX); printf %.0f $(echo "$ONEDEC / 255 * 90" | bc -l); echo ""
done >> $TMPFILE
#
if [[ $(sort $TMPFILE | uniq | wc -l) -eq 6 ]]
then
	sort $TMPFILE | uniq > $OUTFILE
	rm -f $TMPFILE
	exit 0
	#
else
	until [[ $(sort $TMPFILE | uniq | wc -l) -eq 6 ]]
	do  DATENOW=$(date +%s%3N)
		ONEHEX=0x$(curl -s -L -A 'Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/81.0' 'https://qrng.anu.edu.au//wp-content/plugins/colours-plugin/get_one_hex.php?_=$DATENOW')
		ONEDEC=$(printf '%d\n' $ONEHEX)
		printf %.0f $(echo "$ONEDEC / 255 * 90" | bc -l) >> $TMPFILE
		echo "" >> $TMPFILE
	done
	#
	sort $TMPFILE | uniq > $OUTFILE
	rm -f $TMPFILE
fi
exit 0
#
