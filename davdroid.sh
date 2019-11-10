export BASE=`pwd`
set -e

cd ../davdroid

git pull
git submodule update --init --recursive

gradle assembleRelease
cp app/build/outputs/apk/standard/release/app-standard-release.apk ../fdroid-repo/repo/davdroid.apk

cd $BASE
