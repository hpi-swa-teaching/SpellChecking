I can split strings into their single words even if camel case is used in the string.

Instance Variables
	parsedWords    <Dictionary> 	    This stores the single words of the string to parse in the form 
									    "start index of word in whole string" -> "end index of word in whole string"
	stringToParse   <String>
	loopVariable     <Integer>             The loop variable of the main parsing loop
	startOfCurrentWord <Integer>      The start index of the current considered word inside the whole string
	endOfCurrentWord  <Integer>      The end index of the current considered word inside the whole string
