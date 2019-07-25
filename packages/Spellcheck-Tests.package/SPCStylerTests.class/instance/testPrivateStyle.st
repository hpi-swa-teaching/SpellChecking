testing
testPrivateStyle

	| runArray |
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.
	Transcript showln: 'Run Array 1', runArray.
	self assert: ((runArray at: wrongWordIndex) includes: TextEmphasis underlined).
	
	self deny: ( self colorsDiffer: runArray).
	
	correctionUIStyler privateStyle: textWithMistake.	
	runArray := textWithMistake runs.
	Transcript showln: 'Run Array 2', runArray.
	self assert: ((runArray at: wrongWordIndex) includes: TextEmphasis underlined).
	self deny: ( self colorsDiffer: runArray).