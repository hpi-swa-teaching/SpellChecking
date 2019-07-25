similarity
calculateLevenshteinDistance: aString toString: anotherString

	| matrix substitutionCost |

	matrix := self initializeLevenshteinMatrixfor: (aString size) toString: (anotherString size).
	2 to: (aString size) do: [ :i |
		2 to: (anotherString size) do: [ :j |
			((aString at: i) = (anotherString at:j)) ifTrue: [ substitutionCost := 0 ] ifFalse: [ substitutionCost := 1 ].
			matrix at: i at: j put: ( (((matrix at: (i-1) at: (j-1)) + substitutionCost) min: ( (matrix at: (i) at: (j-1)) + 1 )) min: ((matrix at: (i-1) at: (j)) + 1) )
		]	
	].
	^ matrix at: (aString size) at: (anotherString size)