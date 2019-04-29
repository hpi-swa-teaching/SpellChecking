private
destroyHandle
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ self apiDestroyHandleLinux: self apiHandle ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ self apiDestroyHandleWindows: self apiHandle ].
	Smalltalk os platformName asLowercase = 'macos' ifTrue: [ self apiDestroyHandleOSX: self apiHandle ].