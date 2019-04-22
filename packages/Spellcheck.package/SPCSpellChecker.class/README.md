I provide spellchecking functionalities such as checking single words, getting all mistakes in a string, adding and removing words from the dictionary, getting suggestions for a wrong written word. I am a singleton.

Instance Variables
	affixPath:		<FilePath>      The path to the current loaded affix file
	dictionaryPath:  <FilePath>       The path to the current loaded dictionary file
	hunspell:		<SPCHunspellAPI>    Used for making calls into the hunspell library
	parser:		<SPCTextParser>   Used for separating a string into its single words
			
			
Class Variables
	AddedWords    <Set>      Stores all the words that were added to the dictionary
	Instance 		<SPCSpellChecker>      Holds the current instance (this class is a singleton)
