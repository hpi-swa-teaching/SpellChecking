parsing
parseCamelCaseWord: aString

	| subWords i startIndex |
	
	i := 1. startIndex := 1. 
	subWords := Dictionary new.
	
	aString do: [ :c |
		c isLetter & c isUppercase ifTrue: [											
			subWords at: startIndex put: i - 1.
			startIndex := i].
		i :=  i + 1].

	subWords at: startIndex put: i - 1.
	
	^ subWords