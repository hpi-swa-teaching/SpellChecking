as yet unclassified
inputText: aText

	| wrongWordsSize arrayIndex | 

	inputText := aText.
	wrongWords := SpellChecker instance mistakenWordsIn: aText string.
	
	"make this whole collection two arrays to make it iteratable ..."
	wrongWordsSize := 0.
	wrongWords keysDo: [:key | wrongWordsSize := wrongWordsSize + 1].
	
	keyArray := Array new: (wrongWordsSize).
	valueArray := Array new: (wrongWordsSize).
	arrayIndex := 1.
	 
	wrongWords keysAndValuesDo: [:key :value |
			keyArray at: arrayIndex put: key.
			valueArray at: arrayIndex put: value.
			arrayIndex := arrayIndex + 1].
			
	currentKey := wrongWords keys detect: [ :a | true ] ifNone: [self clear. ^self]. "gets first element"
	self wrongWordText: (aText string copyFrom: currentKey to: (wrongWords at: currentKey))
	