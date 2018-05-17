as yet unclassified
wordsWithAIn: aString

	| words a start end|
	words := IdentityDictionary new.
	a := false.
	start := 1.
	end := 1.
	aString do: [:char | 
		(char = $a) ifTrue: [a := true].
		(char isSeparator) ifTrue: [
			a ifTrue: [words at: start put: end - 1].
			start := end + 1.
			a := false].
		end := end + 1.].

	^ words