export BASE=`pwd`
set -e

cd ../fdroidclient

gradle assembleFullRelease
VERSION=$(jq -r  ".[0].apkInfo.versionCode" app/build/outputs/apk/full/release/output.json)
cp app/build/outputs/apk/full/release/app-full-release.apk ../fdroid-repo/repo/fdroid-v$VERSION.apk

cd $BASE
