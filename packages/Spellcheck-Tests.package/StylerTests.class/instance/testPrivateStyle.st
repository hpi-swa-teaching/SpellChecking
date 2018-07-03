as yet unclassified
testPrivateStyle

	| text runArray |
	
	text := 'There is a miscake in the text' asText.
	spellingStyler privateStyle: text.
	runArray := text runs.
	
	self assert: ((runArray at: 12) includes: TextEmphasis underlined).
	self assert: ((runArray at: 12) includes: (TextColor color: Color orange)).
		
	correctionStyler privateStyle: text.	
	runArray := text runs.
	
	self assert: ((runArray at: 12) includes: TextEmphasis underlined).
	self assert: ((runArray at: 12) includes: (TextColor color: Color orange)).