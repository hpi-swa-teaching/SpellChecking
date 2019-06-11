accessing
= anObject
	(anObject class canUnderstand: #affixPath) ifFalse: [ ^ false].
	(anObject class canUnderstand: #dictionaryPath) ifFalse: [ ^ false].
	^ (anObject dictionaryPath = self dictionaryPath) and: [ anObject affixPath = self affixPath ]