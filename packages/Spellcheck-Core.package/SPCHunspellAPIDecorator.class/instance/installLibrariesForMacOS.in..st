library installation
installLibrariesForMacOS: anInteger in: anEntry

	(anEntry fileExists: self class moduleName) ifFalse: [
		self downloadFileTo: anEntry fromURL: self class gitURL, self class moduleName toFileNamed: self class moduleName inBinary: true
	]