#!/bin/sh

if [ "$1" = "debug" ]
then
	echo "debug get config.mk"
grep -r BP2016 ./install/include/pkgconf/system.h > config.mk
sed -e '/VERSION/'d ./config.mk > config.log
sed 's/\#define //' ./config.log  > config.mk
sed -e '/_v3_0/'d ./config.mk > config.log
sed 's/v3_0/\:\= true/' ./config.log  > config.mk
rm config.log

elif [ "$1" = "release" ]
then
	echo "release get config.mk"
grep -r BP2016 ../install/include/pkgconf/system.h > config.mk
sed -e '/VERSION/'d ./config.mk > config.log
sed 's/\#define //' ./config.log  > config.mk
sed -e '/_v3_0/'d ./config.mk > config.log
sed 's/v3_0/\:\= true/' ./config.log  > config.mk
rm config.log

else
	echo "error"
fi

