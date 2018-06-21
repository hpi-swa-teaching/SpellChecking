as yet unclassified
buildWith: builder

	| windowSpec ignoredWordsListSpec removeButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		extent: 300@400;
		label: 'Ignored words';
		children: OrderedCollection new.
				
	ignoredWordsListSpec := builder pluggableListSpec new.
	ignoredWordsListSpec 
		model: self;
		frame: (0@0 corner: 0.7@1);
		list: #ignoredWords;
		getSelected: #selectedWord;
		setSelected: #selectedWord:.
	windowSpec children add: ignoredWordsListSpec.
	
	removeButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec 
		model: self;
		label: 'remove';
		action: #removeFromIgnoredWords;
		frame: (0.7@0 corner: 1@0.05). 
	windowSpec children add: removeButtonSpec.		
		
	^ builder build: windowSpec 