testing
testAddCall

	| result |
	(Smalltalk os platformName asLowercase = 'unix')
		ifTrue: [self assert: true.]
		ifFalse: [
			result := FFIMyLibrary ffiAdd: 12 with: 5.
			self assert: result = 17.]