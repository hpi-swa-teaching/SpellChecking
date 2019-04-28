initialize-release
initialize
	
	super initialize.
	self downloadLibraries;
		downloadDictionaries;
		createHandle