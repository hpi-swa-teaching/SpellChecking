testing
testGetString

	| result |
	result := ffi getString.
	self assert: result = 'This is a string'