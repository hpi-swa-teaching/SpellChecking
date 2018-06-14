as yet unclassified
testShouldCheckSpelling 

	| parser text strings|
	
	text := 'do: [ :c | ]'.
	parser := SpellingTextParser new.
	
	self deny: (parser shouldCheckSpelling: text).
	
	text := 'Hello_World.What?'.
	strings := parser parseText: text.
	strings keysAndValuesDo: [ :s :e | self assert: (parser shouldCheckSpelling: (text copyFrom: s to: e))].