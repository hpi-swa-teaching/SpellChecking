testing
testAddCall

	| result |
	result := ffi add: 12 with: 5.
	self assert: result = 17