echo $TRAVIS_BUILD_DIR
echo ${BUILD_PATH}
echo $SMALLTALK_CI_BUILD
cp -R -v $TRAVIS_BUILD_DIR/build-support/dictionaries ${BUILD_PATH}/
ls -la $TRAVIS_BUILD_DIR
chmod -R 777 ${BUILD_PATH}/dictionaries/*
echo 'loaded dictionaries for hunspell'
