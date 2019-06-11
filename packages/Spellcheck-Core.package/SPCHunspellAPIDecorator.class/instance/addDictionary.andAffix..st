spellchecking
addDictionary: aDictionaryPath andAffix: anAffixPath
	| newHunspellAPI |
	newHunspellAPI := SPCHunspellAPI new: aDictionaryPath withAffix: anAffixPath.
	self instances add: newHunspellAPI