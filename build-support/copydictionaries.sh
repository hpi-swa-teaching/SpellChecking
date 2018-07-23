echo $TRAVIS_OS_NAME

IMAGE_PATH="/home/travis/smalltalkCI-master/_builds/Roboto/"

if [ "$TRAVIS_OS_NAME" == "osx" ];
  then IMAGE_PATH="/Users/travis/smalltalkCI-master/_builds/Roboto/";
fi;

mkdir -p $IMAGE_PATH
cp -R $TRAVIS_BUILD_DIR/build-support/dictionaries $IMAGE_PATH
chmod -R 777 $IMAGE_PATH

ls -lisa $IMAGE_PATH


echo $TRAVIS_BUILD_DIR
echo ${BUILD_PATH}
echo $SMALLTALK_CI_BUILD
cp -R -v $TRAVIS_BUILD_DIR/build-support/dictionaries ${BUILD_PATH}/
ls -la $TRAVIS_BUILD_DIR
chmod -R 777 ${BUILD_PATH}/dictionaries/*
echo 'loaded dictionaries for hunspell'
