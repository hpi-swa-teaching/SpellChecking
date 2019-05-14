accessing
dictionaries
	dictionaries ifNil: [
		dictionaries := Set new
	].
	^ dictionaries