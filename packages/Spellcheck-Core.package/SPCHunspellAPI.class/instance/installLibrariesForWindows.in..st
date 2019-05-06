library installation
installLibrariesForWindows: anInteger in: anEntry

	(anInteger = 64) ifTrue: [ 
			(anEntry asFileDirectory fileExists: 'libhunspellx64.dll') ifFalse: [
				self downloadFileTo: anEntry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/libhunspellx64.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
			]
		]
		ifFalse: [
			(anEntry asFileDirectory fileExists: 'libhunspellx64.dll') ifFalse: [
				self downloadFileTo: anEntry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/libhunspellx32.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
			]
		]