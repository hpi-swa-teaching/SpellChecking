spellchecking
getClassNameForMetaClass: class

	| currentIndex className finished|

	currentIndex := 1.
	className := ''.
	finished := false.
	class
		do: [:char | 
			((class asText copyFrom: currentIndex to: ((currentIndex + ' class' size) min: class size))
						= ' class')
				ifTrue: [
					finished := true.
				]
				ifFalse: [
					finished ifFalse: [
						className := className , char
					]
				].
			currentIndex := currentIndex + 1
		].
		^ className