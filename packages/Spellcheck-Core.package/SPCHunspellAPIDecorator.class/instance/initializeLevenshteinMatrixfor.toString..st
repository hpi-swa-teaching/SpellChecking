similarity
initializeLevenshteinMatrixfor: anInteger toString: anotherInteger
	| matrix |
	matrix := Matrix rows: (anInteger + 1) columns: (anotherInteger + 1).
	0 to: (anInteger) do: [ :i |
		matrix at: (i + 1) at: 1 put: i.	
	].
	0 to: (anotherInteger) do: [ :i |
		matrix at: 1 at: (i + 1) put: i	
	].
	^ matrix