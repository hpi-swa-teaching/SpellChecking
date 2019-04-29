spellchecking
addDictionary: dPath
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ self apiAddLinux: self apiHandle dictionary: dPath ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ self apiAddWindows: self apiHandle dictionary: dPath ].
	Smalltalk os platformName asLowercase = 'macos' ifTrue: [ self apiAddOSX: self apiHandle dictionary: dPath ]