testing
testDirectLibraryAccess

	| result |
	result := self ffiGetString.
	self assert: result = 'This is a string'.