library installation
installLibrariesForMacOS: anInteger in: anEntry

	(anEntry fileExists: 'libhunspell-darwin-x86-32.dylib') ifFalse: [
		self downloadFileTo: (anEntry) fromURL: 'https://raw.githubusercontent.com/hpi-swa-teaching/SpellChecking/dev/libhunspell-darwin-x86-32.dylib'  toFileNamed: 'libhunspell-darwin-x86-32.dylib' inBinary: true.
	].