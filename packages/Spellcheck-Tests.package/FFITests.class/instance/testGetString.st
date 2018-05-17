testing
testGetString

	| result |
	(Smalltalk os platformName asLowercase = 'mac os')
		ifTrue: [self assert: true.]
		ifFalse: [
			result := FFIMyLibrary new ffiGetString.
			self assert: result = 'This is a string'.]
	