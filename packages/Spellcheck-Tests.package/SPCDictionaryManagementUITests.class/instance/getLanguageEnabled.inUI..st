testing
getLanguageEnabled: aLanguage inUI: aDictionaryManagementUI
	^ aDictionaryManagementUI selectedLanguageIndices at: (self getIndexForObject: aLanguage inOrderedCollection: aDictionaryManagementUI availableLanguages)