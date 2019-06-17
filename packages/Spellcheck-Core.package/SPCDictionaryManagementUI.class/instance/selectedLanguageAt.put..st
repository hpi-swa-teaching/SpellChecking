accessing
selectedLanguageAt: anIndex put: anObject
	| languageName |
	Transcript showln: 'Called with: ', anObject, 'forIndex: ', anIndex.
	anObject ifNotNil:[
		self selectedLanguageIndices at: anIndex put: anObject.
		self changed: #selectedLanguage.
	].
	languageName := self availableLanguages at: anIndex ifAbsent: [ SPCHunspellLanguage english languageName ].
	anObject ifTrue: [
		self loadLanguage: languageName.
	]
	ifFalse: [
		self unloadLanguage: languageName.
	]
		