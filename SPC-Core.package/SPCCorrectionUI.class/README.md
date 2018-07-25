I am a user interface for handling spelling errors in whole texts.

Instance Variables
	alternatives:		<Array>    The suggested alternatives for the current considered word
	contextSentence:   <String>      The context sentence in which the current considered word is standing
	inputText:			<Text>                  The text which is checked for spelling errors
	keyArray:			<OrderedCollection>      All the keys of 'wrongWords' in a collection for sorting and traversing them
	parser:				<SpellingTextParser>                     A parser for separating a text into its single words
	selectedAlternative:		<String>     The selected alternative for the current considered word
	workspace:			<Workspace>                 The workspace where the text to check is written in
	wrongWords:		<Dictionary>       All the wrong words in the inputText stored in a dictionary as follows: 
										   start index of wrong word -> end index of wrong word
