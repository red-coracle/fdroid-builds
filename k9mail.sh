export BASE=`pwd`
cd ../k9mail
gradle assembleRelease
cp app/k9mail/build/outputs/apk/release/k9mail-arm64-v8a-release.apk ../fdroid-repo/repo/k9mail-release.apk
cd $BASE
./repo.sh
