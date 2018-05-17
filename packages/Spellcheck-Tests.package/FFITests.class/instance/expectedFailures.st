testing
expectedFailures

	(Smalltalk os platformName asLowercase = 'mac os')
		ifTrue: [^#(testAddCall), #(testGetString)]
