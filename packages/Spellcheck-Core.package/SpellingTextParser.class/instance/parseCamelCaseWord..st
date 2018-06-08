as yet unclassified
parseCamelCaseWord: aString

	| subWords currentWord i startIndex endIndex |
	
	i := 1. startIndex := 1.	endIndex := 1.
	subWords := Dictionary new.
	currentWord := ''.
	
	aString do: [ :c |
		((c isLetter) & (c isUppercase)) ifTrue: [						
			endIndex := i - 1. 						
			subWords at: startIndex put: endIndex.
			startIndex := i. ].
		i :=  i + 1. ].

	endIndex := i - 1.
	subWords at: startIndex put: endIndex.
	
	^ subWords