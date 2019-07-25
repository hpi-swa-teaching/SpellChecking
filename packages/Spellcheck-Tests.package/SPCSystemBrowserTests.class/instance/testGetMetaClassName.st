as yet unclassified
testGetMetaClassName
	| browser |
	browser := SPCSystemBrowser new.
	self assert: ((browser getClassNameForMetaClass: 'SPCSystemBrowserTests class') = 'SPCSystemBrowserTests')