as yet unclassified
testIsSentenceSeparator

	| parser |
	
	parser := SpellingTextParser new.
	
	self assert: (parser isSentenceSeparator: $.).
	self assert: (parser isSentenceSeparator: $!).
	self assert: (parser isSentenceSeparator: $?).
	self deny: (parser isSentenceSeparator: $ ).
	self deny: (parser isSentenceSeparator: $/).