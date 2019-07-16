spellchecking
trimString: aString
	| replacedString inWord |
	replacedString := ''.
	inWord := false.
	aString do: [ :char |
		(char isLetter or: inWord) ifTrue:[
			replacedString := replacedString , char.
			inWord := true
		]
	].
	^ replacedString