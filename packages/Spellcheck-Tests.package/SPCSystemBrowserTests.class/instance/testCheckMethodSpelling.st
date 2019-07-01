as yet unclassified
testCheckMethodSpelling
	| browser methods |
	browser := SPCSystemBrowser new.
	browser informAboutErrors: false.
	browser selectClass: SPCClassWithWronglySpelledMessage.
	methods := browser checkMethodSpelling.
	self assert: (methods contains: [ :aSelector| aSelector key = #falselySpelledMethod])