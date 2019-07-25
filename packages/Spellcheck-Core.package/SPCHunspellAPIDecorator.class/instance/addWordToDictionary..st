spellchecking
addWordToDictionary: aString

	| wordAlreadyKnown currentLines collection |

	collection := self getCurrentAddedWordsCheckIfKnown: aString.
	wordAlreadyKnown := collection at: 2.
	currentLines := collection at: 1.
	"Make sure there is a word number in the input file."
	currentLines at: 1 ifAbsentPut: 0.
	(wordAlreadyKnown) ifFalse: [
		currentLines add: aString.
		self saveWordsToCustomDictionary: currentLines
	]