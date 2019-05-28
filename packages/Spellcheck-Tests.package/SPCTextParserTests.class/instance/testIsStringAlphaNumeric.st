testing
testIsStringAlphaNumeric

	| text strings|
	self disableStringsOnly.
	
	text := 'do: [ :c | ]'.

	self deny: (parser isStringAlphaNumeric: text).
	
	text := 'Hello_World.What?'.
	strings := parser parseText: text.
	strings keysAndValuesDo: [ :s :e | 
		self assert: (parser isStringAlphaNumeric: (text copyFrom: s to: e))]