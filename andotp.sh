export BASE=`pwd`
set -e

cd ../andotp

git pull
gradle assembleRelease
cp app/build/outputs/apk/release/app-release.apk ../fdroid-repo/repo/andotp.apk

cd $BASE
