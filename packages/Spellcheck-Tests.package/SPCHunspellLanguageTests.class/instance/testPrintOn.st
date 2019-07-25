as yet unclassified
testPrintOn
	| stream |
	stream := String new writeStream.
	SPCHunspellLanguage german printOn: (stream).
	self assert: (stream contents beginsWith: 'A SPCHunspellLanguage for language named: german')
	