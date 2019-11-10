BASE=`pwd`
set -e

cd ../amaze

git pull
gradle assembleFdroidRelease
VERSION=$(jq -r  ".[0].apkInfo.versionName" app/build/outputs/apk/fdroid/release/output.json)
cp app/build/outputs/apk/fdroid/release/app-fdroid-release.apk ../fdroid-repo/repo/amaze-$VERSION.apk

cd $BASE
