accessing
selectedLanguage: anObject
	
	anObject ifNotNil:[
		selectedLanguage := anObject.
		self changed: #selectedLanguage.
		]