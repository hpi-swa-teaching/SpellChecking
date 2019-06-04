testing
testUnstyle

	| runArray |
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.	
	self deny: ( self colorsDiffer: runArray).
	
	"Can not be tested any more."
	"spellingStyler unstyle: textWithMistake.
	runArray := textWithMistake runs.
	self assert: ( self colorsDiffer: runArray)."