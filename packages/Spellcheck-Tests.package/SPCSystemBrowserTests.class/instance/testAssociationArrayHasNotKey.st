as yet unclassified
testAssociationArrayHasNotKey
	| dictionary browser |
	dictionary := Dictionary new.
	browser := SPCSystemBrowser new.
	dictionary at: 'a' put: 'b'.
	self deny: (browser AssociationArray: dictionary associations hasKey: 'c') 