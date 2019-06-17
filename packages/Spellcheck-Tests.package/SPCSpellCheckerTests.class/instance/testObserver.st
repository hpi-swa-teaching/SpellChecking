testing
testObserver
	SPCSpellChecker registerObserver: self.
	SPCSpellChecker loadedLanguages: nil.
	self assert: (notified = #loadedLanguages)