#!/bin/sh

TMPFILE=`mktemp`
echo "Downloading snyk agent..."
curl -sSL https://storage.googleapis.com/snyk-demo/snyk-linux > $TMPFILE
chmod +x $TMPFILE
echo "Running snyk agent..."
cd $PROJECT_PATH
$TMPFILE $@