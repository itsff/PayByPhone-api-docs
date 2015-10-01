APIARY_FILE=apiary.apib
APIARY_MANIFEST_FILE=apiary.manifest 

# Clear apiary.apib file
> $APIARY_FILE

# Merges each file defined in the manifest to the new apiary.apib file
cat $APIARY_MANIFEST_FILE | \
while read CMD; do
	echo "Merging " $CMD
	cat $CMD >> $APIARY_FILE; 
	echo >> $APIARY_FILE
done

# Run preview - You need apiary Gem ($ gem install apiary)
apiary preview --server --port 9999