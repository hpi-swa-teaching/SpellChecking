spellchecking
addWordToDictionary: aString
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [self apiAddLinux: self apiHandle word: aString ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ self apiAddWindows: self apiHandle word: aString ]