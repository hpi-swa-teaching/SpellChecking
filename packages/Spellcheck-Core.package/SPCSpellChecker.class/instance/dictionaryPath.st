accessing
dictionaryPath

	^ dictionaryPath ifNil: [self class defaultDictionaryPath]