I provide spellchecking functionalities such as checking single words, getting all mistakes in a string, adding and removing words from the dictionary, getting suggestions for a wrong written word. I am a singleton.

Instance Variables
	loadedLanguages:	<OrderedCollection>	A Collection of HunspellLanguages that represent the currently active languages.
	hunspell:		<SPCHunspellAPIDecorator>    Used for making calls into the hunspell library and managing languages.
	parser:		<SPCTextParser>   Used for separating a string into its single words
			
			
Class Variables
	AddedWords    <Set>      Stores all the words that were added to the dictionary
	Instance 		<SPCSpellChecker>      Holds the current instance (this class is a singleton)
	Observers	<OrderedCollection>	Holds all Classes that are notified if properties of this class change.
