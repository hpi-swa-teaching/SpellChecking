initialize-release
initialize
	super initialize.
	self downloadDictionaries;
		downloadLibraries;
		createHandle