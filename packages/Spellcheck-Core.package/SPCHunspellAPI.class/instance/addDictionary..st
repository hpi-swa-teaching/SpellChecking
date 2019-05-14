spellchecking
addDictionary: aDictionaryPath
	self class dictionaries add: aDictionaryPath.
	self addDictionaryBasic: aDictionaryPath