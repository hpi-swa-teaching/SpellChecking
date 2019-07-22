library installation
downloadDictionaries
	| resourceDir |
	resourceDir := self class ressourceDirectory.
	(resourceDir directoryExists: 'dictionaries') ifFalse: [
		'Fetching SpellChecking dependencies' displayProgressAt: Sensor cursorPoint from: 0 to: 3	during: [ :bar |
			resourceDir createDirectory: 'dictionaries'.
			self downloadDictionaries: 'en_US' ofLanguage: 'english'.
			bar value: 1.

			self downloadDictionaries: 'de_DE' ofLanguage: 'german'.
			bar value: 2.

			self downloadDictionaries: 'sq_SQ' ofLanguage: 'squeak'.
			bar value: 3.
		]
	].
	self initializeCustomDictionary.