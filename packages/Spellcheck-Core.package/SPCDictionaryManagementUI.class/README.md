I am a user interface for managing (modifying and changing) the loaded dictionary.

Instance Variables
	availableLanguages 	<OrderedCollection> The languages that can currently be selected.
	selectedLanguage:		<String>        The currently selected language of the loaded dictionary
	selectedLanguageIndices <Dictionary> Each value pair <Number, Boolean> describes if language with number Number is currently active.
	selectedWord:		<String> 		    The currently selected word of the words added to the dictionary by the user
	spellchecker: 		<SPCSpellChecker>     The current spellchecker
	
