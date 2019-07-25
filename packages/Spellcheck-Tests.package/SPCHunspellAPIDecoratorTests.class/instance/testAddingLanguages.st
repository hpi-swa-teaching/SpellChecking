as yet unclassified
testAddingLanguages
	decorator addDictionary: SPCSpellChecker defaultDictionaryPath andAffix: SPCSpellChecker defaultAffixPath.
	self deny: (decorator isWordCorrect: germanWord).
	decorator addDictionary: SPCSpellChecker defaultGermanDictionaryPath andAffix: SPCSpellChecker defaultGermanAffixPath.
	self assert: (decorator isWordCorrect: germanWord).