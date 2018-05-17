testing
testAddCall

	| result |
	result := FFIMyLibrary new ffiAdd: 12 with: 5.
	self assert: result = 17.