spellchecking
removeWordFromDictionary: aString
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ self apiRemoveLinux: self apiHandle word: aString  ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ self apiRemoveWindows: self apiHandle word: aString ].
	Smalltalk os platformName asLowercase = 'macos' ifTrue: [ self apiRemoveOSX: self apiHandle word: aString ]