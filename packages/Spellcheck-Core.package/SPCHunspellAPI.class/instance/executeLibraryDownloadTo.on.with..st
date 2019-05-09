library installation
executeLibraryDownloadTo: aDirectoryPath on: anInteger with: aProgressBar


	aDirectoryPath directoryEntries do: [ :entry | 
		(entry name asLowercase includesSubstring: 'win') ifTrue: [
				self installLibrariesForWindows: anInteger in: entry.
			].
		aProgressBar value: 1.
		(entry name asLowercase includesSubstring: 'linux') ifTrue: [
				self installLibrariesForLinux: anInteger in: entry.
			].
		aProgressBar value: 2.
		(entry name asLowercase includesSubstring: 'macos') ifTrue: [
				self installLibrariesForMacOS: anInteger in: entry.
			].
		aProgressBar value: 3.
	].