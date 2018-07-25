testing
testGetString

	| result |
	result := SPCFFITestingLibrary new ffiGetString.
	self assert: result = 'This is a string'