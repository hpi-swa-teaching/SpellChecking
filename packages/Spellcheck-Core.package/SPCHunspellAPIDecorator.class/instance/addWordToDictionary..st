spellchecking
addWordToDictionary: aString
	self instances do: [ :instance | instance addWordToDictionary: aString ]