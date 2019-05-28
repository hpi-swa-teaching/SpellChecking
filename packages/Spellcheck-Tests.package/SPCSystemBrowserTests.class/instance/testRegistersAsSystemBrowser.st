as yet unclassified
testRegistersAsSystemBrowser
	SystemBrowser default: Browser.
	self assert: (SystemBrowser default = Browser).
	SPCSystemBrowser initialize.
	self testIsDefaultBrowser.
	