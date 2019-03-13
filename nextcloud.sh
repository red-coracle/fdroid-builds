BASE=`pwd`
cd ../nextcloud
gradle assembleGenericRelease
VERSION=$(jq -r  ".[0].apkInfo.versionCode" build/outputs/apk/generic/release/output.json)
cp build/outputs/apk/generic/release/generic-arm64-v8a-release-$VERSION.apk ../fdroid-repo/repo/nextcloud-v$VERSION.apk
cd $BASE
./repo.sh
