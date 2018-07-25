toolbuilder
buildWith: builder

	| windowSpec wrongWordSpec alternativesListSpec ignoreButtonSpec ignoreAllButtonSpec addButtonSpec leftButtonSpec rightButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		extent: 500@300;
		label: 'Spellchecking - Correct your misspelled words';
		children: OrderedCollection new.
		
	wrongWordSpec := builder pluggableTextSpec new.
	wrongWordSpec 
		model: self;
		frame: (0@0 corner: 0.7@0.2);
		stylerClass: SPCCorrectionUIStyler;
		getText: #contextSentence;
		setText: #contextSentence:.
		
	windowSpec children add: wrongWordSpec.
		
	alternativesListSpec := builder pluggableListSpec new.
	alternativesListSpec 
		model: self;
		frame: (0@0.2 corner: 0.7@1);
		list: #alternatives;
		getSelected: #selectedAlternative;
		setSelected: #selectedAlternative:.
	windowSpec children add: alternativesListSpec.
	
	ignoreButtonSpec := builder pluggableButtonSpec new.
	ignoreButtonSpec 
		model: self;
		label: 'Ignore';
		action: #ignore;
		frame: (0.7@0 corner: 1@0.066). 
	windowSpec children add: ignoreButtonSpec.		
			
	ignoreAllButtonSpec := builder pluggableButtonSpec new.
	ignoreAllButtonSpec 
		model: self;
		label: 'Ignore All';
		action: #ignoreAll;
		frame: (0.7@0.066 corner: 1@0.133). 
	windowSpec children add: ignoreAllButtonSpec.
	
	addButtonSpec := builder pluggableButtonSpec new.
	addButtonSpec 
		model: self;
		label: 'Add to dictionary';
		action: #addToDictionary;
		frame: (0.7@0.133 corner: 1@0.2). 
	windowSpec children add: addButtonSpec.
	
	leftButtonSpec := builder pluggableButtonSpec new.
	leftButtonSpec 
		model: self;
		label: '<';
		action: #displayPreviousWord;
		frame: (0.7@0.9 corner: 0.75@1.0). 
	windowSpec children add: leftButtonSpec.
	
	rightButtonSpec := builder pluggableButtonSpec new.
	rightButtonSpec 
		model: self;
		label: '>';
		action: #displayNextWord;
		frame: (0.95@0.9 corner: 1.0@1.0). 
	windowSpec children add: rightButtonSpec.
	
	^ builder build: windowSpec 