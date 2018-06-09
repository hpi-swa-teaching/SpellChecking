as yet unclassified
testPrivateStyle

	| text runs |
	
	text := 'There is a miscake in the text' asText.
	spellingStyler privateStyle: text.
	runs := text runs.
	
	self assert: ((runs at: 12) includes: TextEmphasis underlined).
	self assert: ((runs at: 12) includes: (TextColor color: Color orange)).
	
	correctionStyler privateStyle: text.	
	runs := text runs.
	
	self deny: ((runs at: 12) includes: (TextColor color: Color orange)).
	self assert: ((runs at: 12) includes: (TextColor color: Color black)).
	self assert: ((runs at: 1) includes: (TextColor color: Color gray)).
	"self deny: ((runs at: 12) includes: TextEmphasis underlined)."