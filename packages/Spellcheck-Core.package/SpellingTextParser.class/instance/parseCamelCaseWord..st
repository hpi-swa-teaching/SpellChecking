as yet unclassified
parseCamelCaseWord: aString

	| words i startIndex endIndex |
	
	i := 1. startIndex := 1.	endIndex := 1.
	words := Dictionary new.
	
	aString do: [ :c |
		((c isLetter) & (c isUppercase)) ifTrue: [
			endIndex := i - 1. 
			(endIndex - startIndex >= 0) ifTrue: [ words at: startIndex put: endIndex ].
			startIndex := i. ].
		i :=  i + 1. ].

	endIndex := i - 1.
	(endIndex - startIndex >= 0) ifTrue: [ words at: startIndex put: endIndex ].
	
	^ words