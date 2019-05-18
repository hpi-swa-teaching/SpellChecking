spellchecking
getMethodSourceCodeFor: aMethodDict fromClass: aClass
	| methods |
	methods := Dictionary new.
	aMethodDict associationsDo: [ :associaton |
		methods at: associaton key put: (aClass ultimateSourceCodeAt: (associaton key) ifAbsent: [^''])
	].
	^ methods