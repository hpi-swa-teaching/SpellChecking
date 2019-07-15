library installation
downloadDictionaries
	| resourceDir aStream |
	resourceDir := self class ressourceDirectory.
	(resourceDir directoryExists: 'dictionaries') ifFalse: [
		'Fetching SpellChecking dependencies' displayProgressAt: Sensor cursorPoint from: 0 to: 		6	during: [ :bar |
			resourceDir createDirectory: 'dictionaries'.
			resourceDir := resourceDir directoryNamed: 'dictionaries'.
			resourceDir createDirectory: 'english'.
			resourceDir := resourceDir directoryNamed: 'english'.
			self downloadFileTo: resourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/en_US.dic' toFileNamed: 'en_US.dic' inBinary: false.
			bar value: 1.
			self downloadFileTo: resourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/en_US.aff' toFileNamed: 'en_US.aff' inBinary: false.
			bar value: 2.
			resourceDir := FileDirectory forFileName: resourceDir pathName.
			resourceDir createDirectory: 'german'.
			resourceDir := resourceDir directoryNamed: 'german'.
			self downloadFileTo: resourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/de_DE.dic' toFileNamed: 'de_DE.dic' inBinary: false.
			bar value: 3.
			self downloadFileTo: resourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/de_DE.aff' toFileNamed: 'de_DE.aff' inBinary: false.
			bar value: 4.
			resourceDir := FileDirectory forFileName: resourceDir pathName.
			resourceDir createDirectory: 'squeak'.
			resourceDir := resourceDir directoryNamed: 'squeak'.
			self downloadFileTo: resourceDir fromURL: 			'https://raw.githubusercontent.com/hpi-swa-teaching/SpellChecking/dev/build-support/dictionaries/squeak/sq_SQ.dic' toFileNamed: 'sq_SQ.dic' inBinary: false.
			bar value: 5.
			self downloadFileTo: resourceDir fromURL: 			'https://raw.githubusercontent.com/hpi-swa-teaching/SpellChecking/dev/build-support/dictionaries/squeak/sq_SQ.aff' toFileNamed: 'sq_SQ.aff' inBinary: false.
			bar value: 6.
		]
	].
	resourceDir := self class ressourceDirectory directoryNamed: 'dictionaries'.
	(resourceDir directoryExists: 'custom') ifFalse: [
		resourceDir createDirectory: 'custom'.
		resourceDir := resourceDir directoryNamed: 'custom'.
		resourceDir newFileNamed: 'cu_CU.aff'.
		aStream := FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath.
		aStream nextPutAll: '0'.
		aStream lf.
		aStream close.
	].
