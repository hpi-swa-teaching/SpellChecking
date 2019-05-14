initialize-release
initialize
	
	super initialize.
	Smalltalk addToStartUpList: self.
	self downloadLibraries;
		downloadDictionaries;
		createHandle