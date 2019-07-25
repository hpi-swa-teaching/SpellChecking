accessing
usedLanguage

	| languages |
	
	languages := OrderedCollection new.
	self class defaultDictionaryDirectoryPath entries do: [ :language |
			languages add: language name
	].
	^ languages