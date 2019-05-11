library installation
installLibrariesForMacOS: anInteger in: anEntry

	(anEntry asFileDirectory fileExists: 'libhunspell-darwin-x86-32.dylib') ifFalse: [
		self downloadFileTo: (anEntry asFileDirectory) fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/libhunspell-darwin-x86-32.dylib'  toFileNamed: 'libhunspell-darwin-x86-32.dylib' inBinary: true.
	].