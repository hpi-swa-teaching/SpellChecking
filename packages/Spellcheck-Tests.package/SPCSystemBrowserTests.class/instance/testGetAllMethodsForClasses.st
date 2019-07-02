as yet unclassified
testGetAllMethodsForClasses
	| browser methods |
	browser := SPCSystemBrowser new.
	methods := browser getAllMethodsForClasses: #('SPCSystemBrowser' 'SPCSystemBrowserTests').
	self deny: ((methods at: SPCSystemBrowserTests) associations select: [ :association | association key = #testGetAllMethodsForClasses]) isEmpty