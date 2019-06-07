spellchecking
removeWordFromDictionary: aString
	self instances do: [ :instance | instance removeWordFromDictionary: aString ].