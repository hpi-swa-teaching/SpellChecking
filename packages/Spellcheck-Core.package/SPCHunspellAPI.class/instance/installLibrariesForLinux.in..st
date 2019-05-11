library installation
installLibrariesForLinux: anInteger in: anEntry

	(self findLinuxLibraryPaths: anEntry asFileDirectory) do: [ :subdir |
			subdir := subdir asFileDirectory.
			(anInteger = 64) ifTrue: [
				(subdir fileExists: 'libhunspell-1.6.so.0') ifFalse: [
					self downloadFileTo: subdir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/64bit-libhunspell-1.6.so.0' toFileNamed: 'libhunspell-1.6.so.0' inBinary: true.
				].
		]
		ifFalse: [
			(subdir fileExists: 'libhunspell-1.6.so.0') ifFalse: [
				self downloadFileTo: subdir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/libhunspell-1.6.so.0' toFileNamed: 'libhunspell-1.6.so.0' inBinary: true.
			].
			(subdir fileExists: 'libstdc++.so.6') ifFalse: [
				self downloadFileTo: subdir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/libstdc++.so.6' toFileNamed: 'libstdc++.so.6' inBinary: true.
			].
		].
		(subdir fileExists: 'MyAwesomeLibrary.so') ifFalse: [
				self downloadFileTo: subdir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/dev/MyAwesomeLibrary.so' toFileNamed: 'MyAwesomeLibrary.so' inBinary: true.
			].
	].
