spellchecking
downloadLibraries
	| ressourceDir libDir |
	ressourceDir := FileDirectory default fullName.
	"This will set libDir to the parent of the resource dir."
	libDir := FileDirectory forFileName: ressourceDir. 
	libDir directoryEntries do: [ :entry | 
		(entry name asLowercase includesSubstring: 'win') ifTrue: [
				(entry asFileDirectory fileExists: 'libhunspellx64.dll') ifFalse: [
					self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/libhunspellx64.dll' toFileNamed: 'libhunspellx64.dll' inBinary: true.
				]
			].
		(entry name asLowercase includesSubstring: 'linux') ifTrue: [
				(self findLinuxLibraryPaths: entry asFileDirectory) do: [ :subdir |
					subdir := subdir asFileDirectory.
					(subdir fileExists: 'libhunspell-1.6.so.0') ifFalse: [
						self downloadFileTo: subdir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/32bit-libhunspell-1.6.so.0' toFileNamed: 'libhunspell-1.6.so.0' inBinary: true.
					].
					(subdir fileExists: 'libstdc++.so.6') ifFalse: [
						self downloadFileTo: subdir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/libstdc++.so.6' toFileNamed: 'libstdc++.so.6' inBinary: true.
					]
				]
			].
		(entry name asLowercase includesSubstring: 'macos') ifTrue: [
				(entry asFileDirectory fileExists: 'libhunspell-darwin-x86-32.dylib') ifFalse: [
					self downloadFileTo: entry asFileDirectory fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/libraries-install-squeak/fix-travis/libhunspell-darwin-x86-32.dylib' toFileNamed: 'libhunspell-darwin-x86-32.dylib' inBinary: true.
				]
			]
	].
	