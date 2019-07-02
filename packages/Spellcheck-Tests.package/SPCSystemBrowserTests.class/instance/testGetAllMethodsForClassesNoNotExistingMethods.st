as yet unclassified
testGetAllMethodsForClassesNoNotExistingMethods
	| browser methods |
	browser := SPCSystemBrowser new.
	methods := browser getAllMethodsForClasses: #('SPCSystemBrowser' 'SPCSystemBrowserTests').
	self assert: ((methods at: SPCSystemBrowserTests) associations select: [ :association | association key = #neverDefinedMethod]) isEmpty