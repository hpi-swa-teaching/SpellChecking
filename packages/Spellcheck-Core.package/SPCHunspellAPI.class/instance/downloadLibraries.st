library installation
downloadLibraries
	| vmDir bitsPerWord |
	vmDir := self class vmDirectory.
	bitsPerWord := self systemArchitecture.
	'Fetching SpellChecking dependencies' displayProgressAt: Sensor cursorPoint from: 0 to: 1	during: [ :bar | (Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [ self installLibrariesForMacOS: bitsPerWord in: vmDir ].
		['win32'] -> [ self installLibrariesForWindows: bitsPerWord in: vmDir ].
		['unix'] -> [ self installLibrariesForLinux: bitsPerWord in: vmDir ]}).
			bar value: 1.
].