library
moduleName 

	^(Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> ['libhunspell-darwin-x86-32.dylib'].
		['win32'] -> ['libhunspell'].
		['unix'] -> ['libhunspell-1.3.so.0']})