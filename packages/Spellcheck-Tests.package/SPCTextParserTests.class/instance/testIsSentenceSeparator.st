testing
testIsSentenceSeparator
	
	self assert: (parser isSentenceSeparator: $.).
	self assert: (parser isSentenceSeparator: $!).
	self assert: (parser isSentenceSeparator: $?).
	self deny: (parser isSentenceSeparator: $ ).
	self deny: (parser isSentenceSeparator: $/)