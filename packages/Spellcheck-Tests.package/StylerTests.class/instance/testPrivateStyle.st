testing
testPrivateStyle

	| text runs |
	
	text := 'There is a miscake in the text' asText.
	spellingStyler privateStyle: text.
	runs := text runs.
	
	self assert: ((runs at: 12) includes: TextEmphasis underlined).
	self assert: ((runs at: 12) includes: (TextColor color: Color orange)).
	
	runs := nil.
	correctionStyler privateStyle: text.	
	runs := text runs.
	
	self assert: ((runs at: 12) includes: (TextEmphasis bold)).
	self deny: ((runs at: 1) includes: (TextEmphasis bold))