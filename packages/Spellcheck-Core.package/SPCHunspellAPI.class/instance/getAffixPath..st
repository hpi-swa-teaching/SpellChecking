initialize-release
getAffixPath: aPath

	| automaticPath |
	
	automaticPath := (aPath allButLast: 4), '.aff'.
	(FileDirectory new fileExists: (automaticPath)) ifTrue: [
		 ^FileStream fileNamed: (automaticPath)
	] ifFalse: [
		^ self selectFileFromFileChooserWithCaption: 'Please select a .aff file for your dictionary'
	]