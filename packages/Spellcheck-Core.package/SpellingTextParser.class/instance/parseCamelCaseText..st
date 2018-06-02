as yet unclassified
parseCamelCaseText: aString

	| strings i startIndex endIndex |
	
	i := 1. startIndex := 1.	endIndex := 1.
	strings := Dictionary new.
	
	aString do: [ :c |
		((c isLetter) & (c isUppercase)) ifTrue: [
			endIndex := i - 1. 
			(endIndex - startIndex >= 0) ifTrue: [ strings at: startIndex put: endIndex ].
			startIndex := i. ].
		i :=  i + 1. ].

	endIndex := i - 1.
	(endIndex - startIndex >= 0) ifTrue: [ strings at: startIndex put: endIndex ].
	
	^ strings