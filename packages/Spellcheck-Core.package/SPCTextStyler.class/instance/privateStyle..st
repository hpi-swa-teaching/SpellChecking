styling
privateStyle: aText
	self class spellCheckingEnabled ifTrue:[
		self unstyle: aText;
			highlightSyntaxIn: aText;
		 	highlightSpellingMistakesIn: aText
	]
	ifFalse: [
		super privateStyle: aText	
	]