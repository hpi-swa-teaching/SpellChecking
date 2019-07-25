testing
testObserver
	| observer |
	observer := SPCObserver new.
	SPCSpellChecker registerObserver: observer.
	SPCSpellChecker loadedLanguages: nil.
	self assert: (observer event = #loadedLanguages)