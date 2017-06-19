#!/bin/bash
INBOXES=$( find ~/.thunderbird/z880trha.default/ImapMail/ -name INBOX )
for inbox in $INBOXES; do
    MAILCOUNT=$(grep -c "X-Mozilla-Status:0000" "$inbox")
    
    SUM=$(($SUM + $MAILCOUNT))
done
echo "$SUM"
#AAUMAIL=$( grep -c "X-Mozilla-Status:0000" "~/$ )
#echo "$INBOXES"
