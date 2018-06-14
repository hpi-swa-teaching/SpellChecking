as yet unclassified
parseText: aString

	| words endIndex startIndex lastChar |
	
	words := Dictionary new.
	startIndex := 1.
	endIndex := 1.
	lastChar := $a.
	
	aString do: [ :c |
		((lastChar isSeparator) & (c isLetter) & (c isLowercase)) ifTrue:[startIndex := startIndex +1].
		(c isSeparator) 
			ifTrue: [
				words at: startIndex put: endIndex - 1. 
				startIndex := endIndex].
		((c isLetter) & (c isUppercase))
			ifTrue:
				[words at: startIndex put: endIndex  - 1.
				startIndex := endIndex].
		lastChar := c.
		endIndex := endIndex +1].
	words at: startIndex put: endIndex - 1.
	
	^ words