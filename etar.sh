export BASE=`pwd`
cd ../etar
gradle assembleRelease
cp build/outputs/apk/release/etar-release.apk ../fdroid-repo/repo/etar-release.apk
cd $BASE
./repo.sh
