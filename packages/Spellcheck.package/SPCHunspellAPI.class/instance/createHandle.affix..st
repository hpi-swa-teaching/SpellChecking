private
createHandle: dictionaryPath affix: affixPath
	| handle |
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ handle :=self apiCreateHandleLinux: affixPath dPath: dictionaryPath ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ handle :=self apiCreateHandleWindows: affixPath dPath: dictionaryPath ].
	self apiHandle: handle