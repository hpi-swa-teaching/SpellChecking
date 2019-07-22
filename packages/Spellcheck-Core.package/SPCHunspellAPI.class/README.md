I provide simple access to the hunspell library for spellchecking.

Instance Variables
	apiHandle:		<void*>   This is needed by the c-library for function calls and obtained
							    by calling apiCreateHandle: dPath:
	dictionaryPath: 	<String> Path to the dictionary of the loaded language.
	affixPath: 	<String> Path to the grammar / affix file of the loaded language.


