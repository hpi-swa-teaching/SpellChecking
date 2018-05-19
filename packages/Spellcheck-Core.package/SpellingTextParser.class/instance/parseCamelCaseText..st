as yet unclassified
parseCamelCaseText: aString

	| strings i startIndex endIndex |
	
	i := 1.
	startIndex := 1.
	endIndex := 1.
	strings := OrderedCollection new.

	aString do: [ :c |
		c := aString at: i.
		((c isLetter) & (c isUppercase)) ifTrue: [
			endIndex := i - 1. 
			(endIndex - startIndex >= 0) ifTrue: [
			strings add: (aString copyFrom: startIndex to: endIndex) ].
			startIndex := i. ].
		i :=  i + 1. ].

	endIndex := i - 1.
	(endIndex - startIndex >= 0) ifTrue: [
		strings add: (aString copyFrom: startIndex to: endIndex) ].
	
	^ strings