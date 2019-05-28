initialize-release
initialize
	
	super initialize.
	Smalltalk addToStartUpList: self.
	self installDependencies;
		createHandle