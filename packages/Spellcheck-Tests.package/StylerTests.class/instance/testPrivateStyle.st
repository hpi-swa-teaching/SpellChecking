as yet unclassified
testPrivateStyle

	| text runs |
	
	text := 'There is a miscake in the text' asText.
	styler privateStyle: text.
	runs := text runs.
	
	self assert: ((runs at: 12) includes: TextEmphasis underlined).
	self assert: ((runs at: 12) includes: (TextColor color: Color orange))