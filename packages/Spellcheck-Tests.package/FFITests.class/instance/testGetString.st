testing
testGetString

	| result |
	result := FFIMyLibrary new ffiGetString.
	self assert: result = 'This is a string'