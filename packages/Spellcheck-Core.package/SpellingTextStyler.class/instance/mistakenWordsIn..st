as yet unclassified
mistakenWordsIn: aString

	| words word start end hunspell |
	words := IdentityDictionary new.
	hunspell := HunspellAPI new.
	word := ''.
	start := 1.
	end := 1.
	aString do: [:char |  
		(char isSeparator) ifTrue: [
			(((hunspell isWordCorrect: word) = 0) and: [self isWord: word]) ifTrue: [words at: start put: end - 1].
			start := end + 1.
			Transcript show: word.
			word := ''] ifFalse: [word := word, (char asString).].
		end := end + 1].

	^ words