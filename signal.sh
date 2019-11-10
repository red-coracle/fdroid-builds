BASE=`pwd`
set -e

cd ../signal-android
#git pu

gradle assembleWebsiteRelease
VERSION=$(jq -r  ".[0].apkData.versionName" build/outputs/apk/website/release/output.json)

cp build/outputs/apk/website/release/Signal-website-xxhdpiArm64-v8a-release-$VERSION.apk ../fdroid-repo/repo/
cd $BASE
