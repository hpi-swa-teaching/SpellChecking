toolbuilder
buildWith: builder

	| windowSpec ignoredWordsListSpec removeButtonSpec languageListSpec  importDictionaryButtonSpec downloadDictionaryButtonSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		extent: 500@500;
		label: 'Manage your Dictionaries';
		children: OrderedCollection new.
				
	ignoredWordsListSpec := builder pluggableListSpec new.
	ignoredWordsListSpec 
		model: self;
		frame: (0@0 corner: 0.5@0.94);
		list: #addedWords;
		getSelected: #selectedWord;
		setSelected: #selectedWord:.
	windowSpec children add: ignoredWordsListSpec.
	
	languageListSpec := builder pluggableMultiSelectionListSpec new.
	languageListSpec 
		model: self;
		frame: (0.5@0 corner: 1@0.94);
		list: #loadedLanguages;
		getSelectionList: #selectedLanguageAt:;
		setSelectionList: #selectedLanguageAt:put:.
	windowSpec children add: languageListSpec.	
	
	removeButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec 
		model: self;
		label: 'remove word';
		action: #removeFromIgnoredWords;
		frame: (0.025@0.94 corner: 0.325@1). 
	windowSpec children add: removeButtonSpec.

	importDictionaryButtonSpec := builder pluggableButtonSpec new.
	importDictionaryButtonSpec 
		model: self;
		label: 'import Dictionary';
		action: #importDictionary;
		frame: (0.35@0.94 corner: 0.65@1). 
	windowSpec children add: importDictionaryButtonSpec.

	downloadDictionaryButtonSpec := builder pluggableButtonSpec new.
	downloadDictionaryButtonSpec
		model: self;
		label: 'open Download Page';
		action: #openDownloadPage;
		frame: (0.675@0.94 corner: 0.975@1). 
	windowSpec children add: downloadDictionaryButtonSpec.


	^ builder build: windowSpec 