library installation
installLibrariesForLinux: anInteger in: anEntry
	| subdir urlAddition |
	subdir := anEntry.
	urlAddition := ''.
	(subdir fileExists: self class moduleName) ifFalse:[
		(anInteger = 64) ifTrue: [
			urlAddition :='64bit-'
		] ifFalse: [
			(subdir fileExists: 'libstdc++.so.6') ifFalse: [
				self downloadFileTo: subdir fromURL: (self class gitURL,'libstdc%2B%2B.so.6') toFileNamed: 'libstdc++.so.6' inBinary: true
			]		
		].
		self downloadFileTo: subdir fromURL: (self class gitURL, urlAddition, self class moduleName) toFileNamed: self class moduleName inBinary: true
	].
	(subdir fileExists: self class awesomeLibraryName) ifFalse: [
		self downloadFileTo: subdir fromURL: (self class gitURL, self class awesomeLibraryName) toFileNamed: self class awesomeLibraryName inBinary: true
	]
