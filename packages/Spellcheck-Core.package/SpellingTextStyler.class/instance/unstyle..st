as yet unclassified
unstyle: aText

	aText removeAttributesThat: [:a | 
		a = TextEmphasis underlined or: [
			a class = TextColor and: [a color = Color orange]]] 
	replaceAttributesThat: [:a | false] by: []