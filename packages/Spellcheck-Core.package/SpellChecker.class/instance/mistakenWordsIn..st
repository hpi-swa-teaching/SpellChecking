as yet unclassified
mistakenWordsIn: aString

	| words word start end |
	words := IdentityDictionary new.
	word := ''.
	start := 1.
	end := 1.
	aString do: [:char |  
		(char isSeparator) ifTrue: [ 
			((self shouldCheckSpelling: word) and: [(hunspell isWordCorrect: word) = 0]) ifTrue: [words at: start put: end - 1].
			start := end + 1.
			word := ''] ifFalse: [word := word, (char asString).].
		end := end + 1].

	^ words