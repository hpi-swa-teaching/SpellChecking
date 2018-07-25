as yet unclassified
buildWith: builder

	| windowSpec ignoredWordsListSpec removeButtonSpec languageListSpec  |
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
		list: #ignoredWords;
		getSelected: #selectedWord;
		setSelected: #selectedWord:.
	windowSpec children add: ignoredWordsListSpec.
	
	languageListSpec := builder pluggableListSpec new.
	languageListSpec 
		model: self;
		frame: (0.5@0 corner: 1@0.94);
		list: #loadedLanguages;
		getSelected: #selectedLanguage;
		setSelected: #selectedLanguage:.
	windowSpec children add: languageListSpec.		
	
	removeButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec 
		model: self;
		label: 'remove word';
		action: #removeFromIgnoredWords;
		frame: (0.1@0.94 corner: 0.4@1). 
	windowSpec children add: removeButtonSpec.		
		
	^ builder build: windowSpec 