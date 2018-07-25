as yet unclassified
buildWith: builder

	| windowSpec ignoredWordsListSpec removeButtonSpec languageListSpec titleSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		extent: 400@400;
		label: 'Manage your Dictionaries';
		children: OrderedCollection new.
				
	ignoredWordsListSpec := builder pluggableListSpec new.
	ignoredWordsListSpec 
		model: self;
		frame: (0@0 corner: 0.5@0.9);
		list: #ignoredWords;
		getSelected: #selectedWord;
		setSelected: #selectedWord:.
	windowSpec children add: ignoredWordsListSpec.
	
	"titleSpec := builder pluggableTextSpec new.
	titleSpec
		model: self;
		frame: (0.7@0 corner: 1@0.1);
		setText: 'Loaded dictionary';
		readOnly: true.
	windowSpec children add: titleSpec."
	
	languageListSpec := builder pluggableListSpec new.
	languageListSpec 
		model: self;
		frame: (0.7@0 corner: 1@0.9);
		list: #loadedLanguages;
		getSelected: #selectedLanguage;
		setSelected: #selectedLanguage:.
	windowSpec children add: languageListSpec.		
	
	removeButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec 
		model: self;
		label: 'remove';
		action: #removeFromIgnoredWords;
		frame: (0.1@0.9 corner: 0.4@1). 
	windowSpec children add: removeButtonSpec.		
		
	^ builder build: windowSpec 