testing
expectedFailures

	(Smalltalk os platformName asLowercase = 'unix')
		ifTrue: [^#()]
		ifFalse: [^#(testAddCall), #(testGetString)]
