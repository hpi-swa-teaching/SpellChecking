spellchecking
downloadDictionaries
	| ressourceDir |
	ressourceDir := FileDirectory default.
	(ressourceDir directoryExists: 'dictionaries') ifFalse: [
		ressourceDir createDirectory: 'dictionaries'.
		ressourceDir := ressourceDir directoryNamed: 'dictionaries'.
		ressourceDir createDirectory: 'english'.
		ressourceDir := ressourceDir directoryNamed: 'english'.
		self downloadFileTo: ressourceDir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/en_US.dic' toFileNamed: 'en_US.dic' inBinary: false.
		self downloadFileTo: ressourceDir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/en_US.aff' toFileNamed: 'en_US.aff' inBinary: false.
		ressourceDir := FileDirectory forFileName: ressourceDir pathName.
		ressourceDir createDirectory: 'german'.
		ressourceDir := ressourceDir directoryNamed: 'german'.
		self downloadFileTo: ressourceDir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/de_DE.dic' toFileNamed: 'de_DE.dic' inBinary: false.
		self downloadFileTo: ressourceDir fromURL: 'https://github.com/hpi-swa-teaching/SpellChecking/raw/fix-travis/de_DE.aff' toFileNamed: 'de_DE.aff' inBinary: false
	]