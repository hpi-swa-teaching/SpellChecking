styling
unstyle: aText

	aText removeAttributesThat: [ :a | 
		a = TextEmphasis underlined or: [
			a class = TextColor ]] 
	replaceAttributesThat: [ :a | false] by: []