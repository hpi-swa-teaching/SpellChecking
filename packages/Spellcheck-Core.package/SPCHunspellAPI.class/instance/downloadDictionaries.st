library installation
downloadDictionaries
	| ressourceDir |
	ressourceDir := self class ressourceDirectory.
	(ressourceDir directoryExists: 'dictionaries') ifFalse: [
		'Fetching SpellChecking dependencies' displayProgressAt: Sensor cursorPoint from: 0 to: 		4	during: [ :bar |
			ressourceDir createDirectory: 'dictionaries'.
			ressourceDir := ressourceDir directoryNamed: 'dictionaries'.
			ressourceDir createDirectory: 'english'.
			ressourceDir := ressourceDir directoryNamed: 'english'.
			self downloadFileTo: ressourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/en_US.dic' toFileNamed: 'en_US.dic' inBinary: false.
			bar value: 1.
			self downloadFileTo: ressourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/en_US.aff' toFileNamed: 'en_US.aff' inBinary: false.
			bar value: 2.
			ressourceDir := FileDirectory forFileName: ressourceDir pathName.
			ressourceDir createDirectory: 'german'.
			ressourceDir := ressourceDir directoryNamed: 'german'.
			self downloadFileTo: ressourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/de_DE.dic' toFileNamed: 'de_DE.dic' inBinary: false.
			bar value: 3.
			self downloadFileTo: ressourceDir fromURL: 			'https://github.com/hpi-swa-teaching/SpellChecking/raw/libraries-install-squeak/de_DE.aff' toFileNamed: 'de_DE.aff' inBinary: false.
			bar value: 4.
		]
	]