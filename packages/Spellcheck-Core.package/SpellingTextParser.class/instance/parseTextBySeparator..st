as yet unclassified
parseTextBySeparator: aString

	| strings i startIndex endIndex |
	
	i := 1.
	startIndex := 1.
	endIndex := 1.
	strings := Dictionary new.

	aString do: [ :c |
		(c isSeparator) ifTrue: [
			endIndex := i - 1. 
			(endIndex - startIndex >= 0) ifTrue: [
			strings at: startIndex put: (aString copyFrom: startIndex to: endIndex) ].
			startIndex := i + 1. ].
		i :=  i + 1. ].

	endIndex := i - 1.
	(endIndex - startIndex >= 0) ifTrue: [
		strings at: startIndex put: (aString copyFrom: startIndex to: endIndex) ].
	
	^ strings