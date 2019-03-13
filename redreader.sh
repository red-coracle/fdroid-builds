BASE=`pwd`
cd ../redreader
gradle assembleRelease
VERSION=$(jq -r  ".[0].apkInfo.versionCode" build/outputs/apk/release/output.json)
cp build/outputs/apk/release/redreader-release.apk ../fdroid-repo/repo/redreader-v$VERSION.apk
cd $BASE
./repo.sh
