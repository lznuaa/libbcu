echo creating ${1}/libbcu_version.h

if [ "${APPVEYOR_BUILD_VERSION}" = "" ];
then
	echo build not in appveyor
else
	git tag ${APPVEYOR_BUILD_VERSION}
fi

version=`git describe --tags --long`
echo "#define LIBBCU_GIT_VERSION \"lib$version\"" > ${1}/libbcu_version.h
