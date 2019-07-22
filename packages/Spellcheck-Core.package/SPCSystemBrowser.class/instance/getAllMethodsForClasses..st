spellchecking
getAllMethodsForClasses: classList

	| methods dictForClass |

	methods := Dictionary new.
	classList do: [ :class |
		"Class names may start or end with whitespace (indention in view)."
		class := self trimString: class.
		self selectClassNamed: class.
		class := self selectedClass.
		dictForClass := self selectedClass methodDict.
		methods at: class put: dictForClass.
		class := class class.
		dictForClass := class methodDict.
		methods at: class put: dictForClass
	].
	^ methods