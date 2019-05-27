as yet unclassified
testFindsWrongLiteral
	| browser testLiteral methods |
	browser := SPCSystemBrowser new.
	methods := SPCClassWithWronglySpelledMessage methodDict.
	methods := browser getMethodSourceCodeFor: methods fromClass: SPCClassWithWronglySpelledMessage.
	browser informAboutErrors: false.
	testLiteral := 'a wong Word'.
	methods := browser findMessagesWithSpellingErrors: methods.
	self assert: (methods keys = #(#falselySpelledMethod))
	