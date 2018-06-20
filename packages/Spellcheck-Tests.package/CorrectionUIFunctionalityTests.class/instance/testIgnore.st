testing
testIgnore
	
	correctionUI inputText: 'miscake'.
	correctionUI ignore.
	self assert: (correctionUI wrongWordText = 'No spell checking error').
	self assert: (correctionUI alternatives = #(#'---')).