spellchecking
getAllMethodsForClasses: classList
	| methods dictForClass |
	methods := Dictionary new.
	classList do: [ :class|
		"Class names may start or end with whitespace."
		class := self trimString: class.
		self selectClassNamed: class.
		dictForClass := self selectedClass methodDict.
		methods at: class put: dictForClass
	].
	^ methods