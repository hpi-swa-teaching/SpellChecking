as yet unclassified
testIsSeparator

	| parser |
	
	parser := SpellingTextParser new.
	
	self assert: (parser isSeparator: $.).
	self assert: (parser isSeparator: $+).
	self assert: (parser isSeparator: $ ).
	self assert: (parser isSeparator: $/).
	self deny: (parser isSeparator: $z).
	self deny: (parser isSeparator: $A).