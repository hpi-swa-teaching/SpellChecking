as yet unclassified
testFindsWrongLiteral
	| browser testLiteral |
	browser := SPCSystemBrowser new.
	"No PopUps during testing."
	browser informAboutErrors: false.
	browser selectClass: SPCSystemBrowserTests.
	testLiteral := 'a wong Word'.
	self assert: (browser checkMethodSpelling = 1)
	
	