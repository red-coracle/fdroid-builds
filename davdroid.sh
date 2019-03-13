export BASE=`pwd`
cd ../davdroid
gradle assembleRelease
cp app/build/outputs/apk/standard/release/app-standard-release.apk ../fdroid-repo/repo/davdroid.apk
cd $BASE
./repo.sh
