library installation
downloadLibraries
	| ressourceDir libDir bitsPerWord |
	self halt.
	ressourceDir := FileDirectory default fullName.
	"This will set libDir to the parent of the resource dir."
	libDir := FileDirectory forFileName: ressourceDir. 
	bitsPerWord := self systemArchitecture.
	'Fetching SpellChecking dependencies' displayProgressAt: Sensor cursorPoint from: 0 to: 3	during: [ :bar |
			libDir directoryEntries do: [ :entry | 
				(entry name asLowercase includesSubstring: 'win') ifTrue: [
						self installLibrariesForWindows: bitsPerWord in: entry.
					].
				bar value: 1.
				(entry name asLowercase includesSubstring: 'linux') ifTrue: [
						self installLibrariesForLinux: bitsPerWord in: entry.
					].
				bar value: 2.
				(entry name asLowercase includesSubstring: 'macos') ifTrue: [
						self installLibrariesForMacOS: bitsPerWord in: entry.
					].
				bar value: 3.
			].
].