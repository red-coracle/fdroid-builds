BASE=`pwd`
cd ../signal-android
gradle assembleWebsiteRelease
VERSION=$(jq -r  ".[0].apkInfo.versionName" build/outputs/apk/website/release/output.json)
cp build/outputs/apk/website/release/Signal-website-xxhdpiArm64-v8a-release-$VERSION.apk ../fdroid-repo/repo/
cd $BASE
./repo.sh
