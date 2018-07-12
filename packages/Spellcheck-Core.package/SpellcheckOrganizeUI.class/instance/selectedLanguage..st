as yet unclassified
selectedLanguage: anObject
	
	anObject ifNotNil:[
		selectedLanguage := anObject.
		self changed: #selectedLanguage.
		self loadLanguage]