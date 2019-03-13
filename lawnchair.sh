export BASE=`pwd`
cd ../lawnchair
gradle assembleRelease
cp app/build/outputs/apk/release/app-release.apk ../fdroid-repo/repo/lawnchair.apk
cd $BASE
./repo.sh
