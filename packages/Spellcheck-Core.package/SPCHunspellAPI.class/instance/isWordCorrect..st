spellchecking
isWordCorrect: aString
	
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ ^ (self apiCheckWordLinux: self apiHandle Text: aString) > 0 ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ ^ (self apiCheckWordWindows: self apiHandle Text: aString) > 0 ].
	Smalltalk os platformName asLowercase = 'macos' ifTrue: [ ^ (self apiCheckWordOSX: self apiHandle Text: aString) > 0 ]