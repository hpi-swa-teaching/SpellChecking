as yet unclassified
buildWith: builder

	| windowSpec wrongWordSpec alternativesListSpec ignoreButtonSpec ignoreAllButtonSpec addButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		extent: 500@300;
		label: 'Hallo, I bims, 1 UI';
		children: OrderedCollection new.
		
	wrongWordSpec := builder pluggableTextSpec new.
	wrongWordSpec 
		model: self;
		frame: (0@0 corner: 0.7@0.2);
		getText: #wrongWordText;
		setText: #wrongWordText:.
		
	windowSpec children add: wrongWordSpec.
		
	alternativesListSpec := builder pluggableListSpec new.
	alternativesListSpec 
		model: self;
		frame: (0@0.2 corner: 0.7@1);
		list: #alternatives;
		getIndex: #selectedAlternativeIndex; 
		setIndex: #selectedAlternativeIndex:.
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
		label: 'Skip All';
		action: #skipAll;
		frame: (0.7@0.066 corner: 1@0.133). 
	windowSpec children add: ignoreAllButtonSpec.
	
	addButtonSpec := builder pluggableButtonSpec new.
	addButtonSpec 
		model: self;
		label: 'Add to dictionary';
		action: #addToDict;
		frame: (0.7@0.133 corner: 1@0.2). 
	windowSpec children add: addButtonSpec.
	
	^ builder build: windowSpec 