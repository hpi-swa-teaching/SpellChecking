echo $PROJECT_HOME
echo ${BUILD_PATH}
cp -R -v $PROJECT_HOME/build-support/dictionaries ${BUILD_PATH}/
echo ${BUILD_PATH}/dictionaries
ls -la ${BUILD_PATH}/dictionaries
chmod -R 777 ${BUILD_PATH}/dictionaries/*
echo 'loaded dictionaries for hunspell'
