BASE=`pwd`
set -e

cd ../twire

git pull
gradle assembleRelease
VERSION=$(jq -r  ".[0].apkInfo.versionName" app/build/outputs/apk/release/output.json)
cp app/build/outputs/apk/release/app-release.apk ../fdroid-repo/repo/twire-$VERSION.apk

cd $BASE
