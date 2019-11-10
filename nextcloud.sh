BASE=`pwd`
set -e

cd ../nextcloud

gradle assembleGenericRelease
VERSION=$(jq -r  ".[0].apkData.versionCode" build/outputs/apk/generic/release/output.json)
cp build/outputs/apk/generic/release/generic-release-$VERSION.apk ../fdroid-repo/repo/nextcloud-v$VERSION.apk

cd $BASE
