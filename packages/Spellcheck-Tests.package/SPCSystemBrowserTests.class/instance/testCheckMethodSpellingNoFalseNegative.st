as yet unclassified
testCheckMethodSpellingNoFalseNegative
	| browser methods |
	browser := SPCSystemBrowser new.
	browser informAboutErrors: false.
	browser selectClass: SPCClassWithWronglySpelledMessage.
	methods := browser checkMethodSpelling.
	self deny: (methods contains: [ :aSelector| aSelector key = #correctlySpelledMethod])