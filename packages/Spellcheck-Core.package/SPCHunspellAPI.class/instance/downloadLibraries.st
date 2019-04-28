spellchecking
downloadLibraries
	| ressourceDir libDir |
	self halt.
	ressourceDir := FileDirectory default fullName.
	"This will set libDir to the parent of the resource dir."
	libDir := FileDirectory forFileName: ressourceDir. 
	libDir directoryEntries do: [ :entry | 
		(entry name asLowercase includesSubstring: 'win') ifTrue: [
				(Smalltalk os platformSubtype asLowercase = 'x64') ifTrue: [
					(entry asFileDirectory fileExists: 'libhunspellx64.dll') ifFalse: [
						self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/libhunspellx64.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
					]
				] ifFalse: [
					(entry asFileDirectory fileExists: 'libhunspellx64.dll') ifFalse: [
						self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/libhunspellx32.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
					]
				]
			].
		(entry name asLowercase includesSubstring: 'linux') ifTrue: [
				(entry asFileDirectory fileExists: 'libhunspell-1.6.so.0') ifFalse: [
					(Smalltalk os platformSubtype asLowercase = 'x86_64') ifTrue: [
						self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/32bit-libhunspell-1.6.so.0' toFileNamed: 'libhunspell-1.6.so.0' inBinary: true.
					]
					ifFalse: [
							self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/64bit-libhunspell-1.6.so.0' toFileNamed: 'libhunspell-1.6.so.0' inBinary: true.
							"Travis needs libstdc++."
							self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/libstdc++.so.6' toFileNamed: 'llibstdc++.so.6' inBinary: true.
					]
				]
			].
		(entry name asLowercase includesSubstring: 'macos') ifTrue: [
				(entry asFileDirectory fileExists: 'libhunspell-darwin-x86-32.dylib') ifFalse: [
					self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/libhunspell-darwin-x86-32.dylib' toFileNamed: 'libhunspell-darwin-x86-32.dylib' inBinary: true.
				]
			]
	].
	