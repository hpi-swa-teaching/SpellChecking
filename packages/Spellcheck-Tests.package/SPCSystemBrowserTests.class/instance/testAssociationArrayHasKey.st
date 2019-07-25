as yet unclassified
testAssociationArrayHasKey
	| dictionary browser |
	dictionary := Dictionary new.
	browser := SPCSystemBrowser new.
	dictionary at: 'a' put: 'b'.
	self assert: (browser AssociationArray: dictionary associations hasKey: 'a') 