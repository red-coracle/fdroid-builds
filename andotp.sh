export BASE=`pwd`
cd ../andotp
gradle assembleRelease
cp app/build/outputs/apk/release/app-release.apk ../fdroid-repo/repo/andotp.apk
cd $BASE
./repo.sh
