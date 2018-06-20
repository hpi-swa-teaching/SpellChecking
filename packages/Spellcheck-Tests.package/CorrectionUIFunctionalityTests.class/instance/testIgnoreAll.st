testing
testIgnoreAll

	correctionUI inputText: 'Manny miscakes in thee texxt'.
	correctionUI ignoreAll.
	self assert: (correctionUI wrongWordText = 'No spell checking error').
	self assert: (correctionUI alternatives = #(#'---')).