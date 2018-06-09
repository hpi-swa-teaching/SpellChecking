testing
testIgnore

	correctionUI ignore.
	self assert: (correctionUI wrongWordText = 'No misspelled words left').
	self assert: (correctionUI alternatives = #(#'---')).