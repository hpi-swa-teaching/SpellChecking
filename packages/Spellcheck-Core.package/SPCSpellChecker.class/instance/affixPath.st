accessing
affixPath

	^ affixPath ifNil: [self class defaultAffixPath]