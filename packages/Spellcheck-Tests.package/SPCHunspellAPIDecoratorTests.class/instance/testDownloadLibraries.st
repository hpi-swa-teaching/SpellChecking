as yet unclassified
testDownloadLibraries
	
		| bitsPerWord |
		
		bitsPerWord := SPCHunspellAPIDecorator systemArchitecture.	

       (Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [ self assert: (SPCHunspellAPIDecorator vmDirectory fileExists: 'libhunspell-darwin-x86-32.dylib') ].
		['win32'] -> [ ( bitsPerWord = 32 ) ifTrue: [ self assert: (SPCHunspellAPIDecorator vmDirectory fileExists: 'libhunspellx32.dll') ] ifFalse: [ self assert: (SPCHunspellAPIDecorator vmDirectory fileExists: 'libhunspellx64.dll') ]  ].
		['unix'] -> [( bitsPerWord = 32 ) ifTrue: [ self assert: (SPCHunspellAPIDecorator vmDirectory fileExists: 'libhunspell-1.6.so.0') ] ifFalse: [ self assert: (SPCHunspellAPIDecorator vmDirectory fileExists: '64bit-libhunspell-1.6.so.0') ]  ]})