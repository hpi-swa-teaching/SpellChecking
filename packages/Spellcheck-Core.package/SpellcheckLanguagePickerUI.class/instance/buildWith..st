as yet unclassified
buildWith: builder

	| windowSpec languageListSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		extent: 300@400;
		label: 'Choose a language to load';
		children: OrderedCollection new.
				
	languageListSpec := builder pluggableListSpec new.
	languageListSpec 
		model: self;
		frame: (0@0 corner: 1@1);
		list: #loadedLanguages;
		getSelected: #selectedLanguage;
		setSelected: #selectedLanguage:.
	windowSpec children add: languageListSpec.		
		
	^ builder build: windowSpec 