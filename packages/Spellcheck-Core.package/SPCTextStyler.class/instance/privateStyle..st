styling
privateStyle: aText
	super privateStyle: aText.
	self class spellCheckingEnabled ifTrue:[
		self unstyle: aText;
			highlightSyntaxIn: aText;
		 	highlightSpellingMistakesIn: aText
	]