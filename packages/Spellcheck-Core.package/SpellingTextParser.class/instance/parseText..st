as yet unclassified
parseText: aString

	| parsedWords i startIndex endIndex |

	i := 1. startIndex := 1. endIndex := 1.
	parsedWords := Dictionary new. 
	
	aString do: [ :c |
		(self isSeparator: c) ifTrue: [
			endIndex := i - 1. 
			endIndex - startIndex >= 0 ifTrue: [
				self addWord: aString from: startIndex to: endIndex into: parsedWords.].
			startIndex := i + 1. ]. 
		i :=  i + 1. ].

	endIndex := i - 1.
	endIndex - startIndex >= 0 ifTrue: [
		self addWord: aString from: startIndex to: endIndex into: parsedWords.].
	
	^ parsedWords