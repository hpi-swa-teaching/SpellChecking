testing
testIgnore

	correctionUI ignore.
	self assert: (correctionUI wrongWordText = 'No spell checking errror').
	self assert: (correctionUI alternatives = #(#'---')).