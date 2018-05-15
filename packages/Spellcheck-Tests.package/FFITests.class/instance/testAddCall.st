testing
testAddCall

	| result |
	result := FFIMyLibrary ffiAdd: 12 with: 5.
	self assert: result = 17.