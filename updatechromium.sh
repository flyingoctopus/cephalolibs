    #!/bin/bash

    BASEDIR=http://build.chromium.org/buildbot/snapshots/chromium-rel-mac
    cd /Users/vincent/Desktop/chromium_nightly

    echo "Downloading number of latest revision"
    REVNUM=`curl -# $BASEDIR/LATEST`

    echo "Found latest revision number $REVNUM, starting download"

    curl $BASEDIR/$REVNUM/chrome-mac.zip > $REVNUM.zip

    echo "Unzipping..."
    unzip $REVNUM.zip 2>&1 > /dev/null
    echo "Done."

    echo "Moving to Applications directory..."
    rm -rf /Applications/Chromium.app/
    mv chrome-mac/Chromium.app/ /Applications/
    rm -rf /Users/vincent/Desktop/chromium_nightly
    echo "Done, update successful"

