BASE=`pwd`
cd ../fairemail
gradle assembleFullRelease
VERSION=$(jq -r  ".[0].apkInfo.versionName" app/build/outputs/apk/full/release/output.json)
#cp app/build/outputs/apk/full/release/FairEmail-v$VERSION-full-release.apk ../fdroid-repo/repo/
cp app/build/outputs/apk/full/release/FairEmail-v$VERSION-full-arm64-v8a-release.apk ../fdroid-repo/repo/
cd $BASE
./repo.sh
