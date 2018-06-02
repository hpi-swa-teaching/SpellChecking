as yet unclassified
parseText: aString

	| strings i startIndex endIndex |
	
	i := 1. startIndex := 1. endIndex := 1.
	strings := Dictionary new.

	aString do: [ :c |
		(self isSeparator: c) ifTrue: [
			endIndex := i - 1. 
			(endIndex - startIndex >= 0) ifTrue: [
				strings := self addParsedWord: aString from: startIndex to: endIndex into: strings. ].
				startIndex := i + 1. 
			]. i :=  i + 1. ].

	endIndex := i - 1.
	(endIndex - startIndex >= 0) ifTrue: [ strings := self addParsedWord: aString from: startIndex to: endIndex into: strings. ].
	
	^ strings