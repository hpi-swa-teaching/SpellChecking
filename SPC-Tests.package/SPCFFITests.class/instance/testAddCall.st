testing
testAddCall

	| result |
	result := SPCFFITestingLibrary new ffiAdd: 12 with: 5.
	self assert: result = 17