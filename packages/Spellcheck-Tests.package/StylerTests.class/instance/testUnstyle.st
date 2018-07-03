as yet unclassified
testUnstyle

	| text runArray |
	
	text := 'There is a miscake in the text' asText.
	
	spellingStyler privateStyle: text.
	runArray := text runs.	
	self assert: ((runArray at: 12) includes: (TextColor color: Color orange)).
	
	spellingStyler unstyle: text.
	runArray := text runs.
	self deny: ((runArray at: 12) includes: (TextColor color: Color orange))