as yet unclassified
debugParserBySeparator: aString

	| strings |
	strings := self parseTextBySeparator: aString.
	strings keysDo: [ :startIndex |
		Transcript show: startIndex asString , ' "' , (strings at: startIndex) , '"'.
		Transcript cr. ].