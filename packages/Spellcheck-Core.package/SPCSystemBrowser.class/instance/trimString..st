spellchecking
trimString: aString
	| replacedString |
	replacedString := ''.
	aString do: [ :char|
		char isLetter ifTrue:[
			replacedString := replacedString , char
		]
	].
	^ replacedString