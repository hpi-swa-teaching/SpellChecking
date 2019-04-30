library
moduleName 

	^(Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> ['libhunspell-darwin-x86-32.dylib'].
		['win32'] -> ['libhunspellx64.dll'].
		['unix'] -> ['libhunspell-1.6.so.0']})