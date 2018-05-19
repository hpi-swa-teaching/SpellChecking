as yet unclassified
debugCamelCaseParser: aString

	| strings |
	strings := self parseCamelCaseText: aString.
	strings do: [ :str |
		Transcript show: str.
		Transcript show: ' '.	].