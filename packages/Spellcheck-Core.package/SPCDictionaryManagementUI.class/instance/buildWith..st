toolbuilder
buildWith: builder

	| windowSpec ignoredWordsListSpec removeButtonSpec languageListSpec  importDictionaryButtonSpec loadLanguageButtonSpec addDictionaryButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		extent: 500@500;
		label: 'Manage your Dictionaries';
		children: OrderedCollection new.
				
	ignoredWordsListSpec := builder pluggableListSpec new.
	ignoredWordsListSpec 
		model: self;
		frame: (0@0 corner: 0.5@0.88);
		list: #ignoredWords;
		getSelected: #selectedWord;
		setSelected: #selectedWord:.
	windowSpec children add: ignoredWordsListSpec.
	
	languageListSpec := builder pluggableListSpec new.
	languageListSpec 
		model: self;
		frame: (0.5@0 corner: 1@0.88);
		list: #loadedLanguages;
		getSelected: #selectedLanguage;
		setSelected: #selectedLanguage:.
	windowSpec children add: languageListSpec.		
	
	removeButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec 
		model: self;
		label: 'remove word';
		action: #removeFromIgnoredWords;
		frame: (0.1@0.88 corner: 0.4@0.94). 
	windowSpec children add: removeButtonSpec.

	importDictionaryButtonSpec := builder pluggableButtonSpec new.
	importDictionaryButtonSpec 
		model: self;
		label: 'import Dictionary';
		action: #importDictionary;
		frame: (0.1@0.94 corner: 0.4@1). 
	windowSpec children add: importDictionaryButtonSpec.

	loadLanguageButtonSpec := builder pluggableButtonSpec new.
	loadLanguageButtonSpec 
		model: self;
		label: 'load selected Language';
		action: #loadLanguage;
		frame: (0.6@0.88 corner: 0.9@0.94). 
	windowSpec children add: loadLanguageButtonSpec.

	addDictionaryButtonSpec := builder pluggableButtonSpec new.
	addDictionaryButtonSpec 
		model: self;
		label: 'add selected Dictionary';
		action: #addDictionary;
		frame: (0.6@0.94 corner: 0.9@1). 
	windowSpec children add: addDictionaryButtonSpec.


	^ builder build: windowSpec 