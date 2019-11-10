export BASE=`pwd`
set -e

cd ../etar

git pull
gradle assembleRelease
cp build/outputs/apk/release/etar-release.apk ../fdroid-repo/repo/etar-release.apk

cd $BASE
