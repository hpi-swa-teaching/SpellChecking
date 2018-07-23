echo $TRAVIS_BUILD_DIR
echo ${BUILD_PATH}
echo $SMALLTALK_CI_BUILD
cp -R -v $TRAVIS_BUILD_DIR/build-support/dictionaries ${BUILD_PATH}/
echo ${BUILD_PATH}/dictionaries
ls -la ${BUILD_PATH}/dictionaries
chmod -R 777 ${BUILD_PATH}/dictionaries/*
echo 'loaded dictionaries for hunspell'
