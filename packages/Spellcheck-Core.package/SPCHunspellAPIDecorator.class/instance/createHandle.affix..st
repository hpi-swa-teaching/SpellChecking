spellchecking
createHandle: aDictionarypath affix: anAffixPath
	self instances add: (SPCHunspellAPI new: aDictionarypath withAffix: anAffixPath)