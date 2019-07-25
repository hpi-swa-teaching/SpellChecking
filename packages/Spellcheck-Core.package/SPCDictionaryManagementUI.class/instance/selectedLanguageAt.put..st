accessing
selectedLanguageAt: anIndex put: anObject

	| languageName |
	
	anObject ifNotNil:[
		self selectedLanguageIndices at: anIndex put: anObject.
		self changed: #selectedLanguage
	].
	languageName := self availableLanguages at: anIndex ifAbsent: [ SPCHunspellLanguage english languageName ].
	anObject ifTrue: [
		self loadLanguage: languageName
	]
	ifFalse: [
		self unloadLanguage: languageName
	]
		