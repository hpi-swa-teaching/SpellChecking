testing
testIgnoreAll

	correctionUI ignoreAll.
	self assert: (correctionUI wrongWordText = 'No misspelled words left').
	self assert: (correctionUI alternatives = #(#'---')).