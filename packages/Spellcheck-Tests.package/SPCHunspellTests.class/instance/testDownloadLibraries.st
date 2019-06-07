testing
testDownloadLibraries
	
		| bitsPerWord |
		
		bitsPerWord := SPCHunspellAPI systemArchitecture.	

       (Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [ self assert: (SPCHunspellAPI vmDirectory fileExists: 'libhunspell-darwin-x86-32.dylib') ].
		['win32'] -> [ ( bitsPerWord = 32 ) ifTrue: [ self assert: (SPCHunspellAPI vmDirectory fileExists: 'libhunspellx32.dll') ] ifFalse: [ self assert: (SPCHunspellAPI vmDirectory fileExists: 'libhunspellx64.dll') ]  ].
		['unix'] -> [( bitsPerWord = 32 ) ifTrue: [ self assert: (SPCHunspellAPI vmDirectory fileExists: 'libhunspell-1.6.so.0') ] ifFalse: [ self assert: (SPCHunspellAPI vmDirectory fileExists: '64bit-libhunspell-1.6.so.0') ]  ]})