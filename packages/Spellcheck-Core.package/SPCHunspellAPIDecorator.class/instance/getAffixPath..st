dictionaries
getAffixPath: aPath

	| automaticPath |
	
	automaticPath := (aPath allButLast: 4), self class affixFileType.
	(FileDirectory new fileExists: (automaticPath)) ifTrue: [
		 ^FileStream fileNamed: (automaticPath)
	] ifFalse: [
		^ self selectFileFromFileChooserWithCaption: (self class selectFileMessage: self class affixFileType)
	]