testing
testSkipAll

	correctionUI skipAll.
	self assert: (correctionUI wrongWordText = 'No spell checking errror').
	self assert: (correctionUI alternatives = #(#'---')).