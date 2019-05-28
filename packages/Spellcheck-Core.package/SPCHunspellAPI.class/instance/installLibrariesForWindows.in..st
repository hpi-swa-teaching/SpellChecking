library installation
installLibrariesForWindows: anInteger in: anEntry

	(anInteger = 64) ifTrue: [ 
			(anEntry fileExists: 'libhunspellx64.dll') ifFalse: [
				self downloadFileTo: anEntry fromURL: 'https://raw.githubusercontent.com/hpi-swa-teaching/SpellChecking/dev/libhunspellx64.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
			]
		]
		ifFalse: [
			(anEntry fileExists: 'libhunspellx64.dll') ifFalse: [
				self downloadFileTo: anEntry fromURL: 'https://raw.githubusercontent.com/hpi-swa-teaching/SpellChecking/dev/libhunspellx32.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
			]
		]