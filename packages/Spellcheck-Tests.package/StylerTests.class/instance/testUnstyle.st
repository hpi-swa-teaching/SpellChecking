as yet unclassified
testUnstyle

	| text runs |
	
	text := 'There is a miscake in the text' asText.
	spellingStyler privateStyle: text.
	runs := text runs.
	
	self assert: ((runs at: 12) includes: (TextColor color: Color orange)).
	spellingStyler unstyle: text.
	runs := text runs.
	
	self deny: ((runs at: 12) includes: (TextColor color: Color orange))