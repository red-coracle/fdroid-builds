BASE=`pwd`
set -e

cd ../fairemail

git pull
gradle assembleFullRelease
VERSION=$(jq -r  ".[0].apkData.versionName" app/build/outputs/apk/full/release/output.json)
cp app/build/outputs/apk/full/release/FairEmail-v$VERSION-full-arm64-v8a-release.apk ../fdroid-repo/repo/

cd $BASE
