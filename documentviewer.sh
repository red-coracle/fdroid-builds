BASE=`pwd`
set -e

cd ../document-viewer
git pull

gradle assembleRelease
VERSION=$(jq -r  ".[0].apkInfo.versionCode" document-viewer/build/outputs/apk/release/output.json)
cp document-viewer/build/outputs/apk/release/document-viewer-arm64-v8a-release.apk ../fdroid-repo/repo/document-viewer-arm64-v8a-v$VERSION.apk

cd $BASE
