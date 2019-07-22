library installation
installLibrariesForWindows: anInteger in: anEntry

	| downloadURL |

	(anEntry fileExists: self class moduleName) ifFalse: [
		(anInteger = 64) ifTrue: [
			downloadURL := self class gitURL, self class moduleName
		] ifFalse: [
			downloadURL := self class gitURL, 'libhunspellx32.dll'
		].
		self downloadFileTo: anEntry fromURL: downloadURL toFileNamed: self class moduleName inBinary: true
	].
