testing
testUnstyle

	| runArray |
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.	
	self deny: ( self colorsDiffer: runArray).
	spellingStyler unstyle: textWithMistake.
	runArray := textWithMistake runs.
	self assert: ( runArray values = #(#())).