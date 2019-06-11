testing
expectedFailures

	(Smalltalk os platformName asLowercase = 'unix')
		ifTrue: [^#(#testAddToDict)]
		ifFalse: [^#()]
