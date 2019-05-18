as yet unclassified
getAllStringLiterals: aMethodDict
	| methods methodLiterals |
	methods := Dictionary new.
	aMethodDict associationsDo: [ :associaton |
		methodLiterals := associaton value allLiterals select: [ :literal |
			"Method and class references are also considered literals; filter them out."
			literal isString and: [literal isSymbol not]			
			
		].
		methods at: associaton key put: methodLiterals
	].
	^ methods