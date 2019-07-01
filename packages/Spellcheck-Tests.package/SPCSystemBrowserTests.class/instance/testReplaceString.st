as yet unclassified
testReplaceString
	| browser |
	browser := SPCSystemBrowser new.
	self assert: ((browser trimString: '  abc  ') = 'abc')