initialize-release
setUp 
	super setUp.
	ui := SPCDictionaryManagementUI new.
	self wantsToTest: ui open.
	
	wrongWord := 'squeack'.
	germanWord := 'Klabautermann'.
	SPCSpellChecker loadedLanguages: SPCHunspellLanguage default