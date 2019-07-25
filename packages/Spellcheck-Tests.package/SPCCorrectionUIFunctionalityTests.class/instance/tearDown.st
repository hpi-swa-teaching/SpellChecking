initialize-release
tearDown
	super tearDown.
	SPCHunspellAPIDecorator disableDownload: false.
	spellchecker 
		removeWordFromIgnoreList: 'Manny';
		removeWordFromIgnoreList: 'miscake';
		removeWordFromIgnoreList: 'texxt'