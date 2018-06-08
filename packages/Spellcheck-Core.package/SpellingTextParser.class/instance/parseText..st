as yet unclassified
parseText: aString

	| parsedWords i startIndex endIndex |
	
	i := 1. startIndex := 1. endIndex := 1.
	parsedWords := Dictionary new. 
	"The dictionary does not actually store the parsed words as a string, rather the start and end index of them within the whole text."

	aString do: [ :c |
		(self isSeparator: c) ifTrue: [
			endIndex := i - 1. 
			(endIndex - startIndex >= 0) ifTrue: [
				parsedWords := self addParsedWord: aString from: startIndex to: endIndex into: parsedWords.].
			startIndex := i + 1. ]. 
		i :=  i + 1. ].

	endIndex := i - 1.
	(endIndex - startIndex >= 0) ifTrue: [
		parsedWords := self addParsedWord: aString from: startIndex to: endIndex into: parsedWords.].
	
	^ parsedWords