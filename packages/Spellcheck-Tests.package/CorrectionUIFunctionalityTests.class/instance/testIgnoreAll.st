testing
testIgnoreAll

	correctionUI ignoreAll.
	self assert: (correctionUI wrongWordText = 'No spell checking errror').
	self assert: (correctionUI alternatives = #(#'---')).