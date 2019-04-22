private
createHandle
	| handle |
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ handle :=self apiCreateHandleLinux: SPCSpellChecker defaultAffixPath dPath: SPCSpellChecker defaultDictionaryPath. ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ handle :=self apiCreateHandleWindows: SPCSpellChecker defaultAffixPath dPath: SPCSpellChecker defaultDictionaryPath. ].
	
	self apiHandle: (handle)