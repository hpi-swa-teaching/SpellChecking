testing
testShouldCheckSpelling 

	| text strings|
	
	text := 'do: [ :c | ]'.

	self deny: (parser shouldCheckSpelling: text).
	
	text := 'Hello_World.What?'.
	strings := parser parseText: text.
	strings keysAndValuesDo: [ :s :e | 
		self assert: (parser shouldCheckSpelling: (text copyFrom: s to: e))]