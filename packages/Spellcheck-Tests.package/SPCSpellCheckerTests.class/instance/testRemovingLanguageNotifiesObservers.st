testing
testRemovingLanguageNotifiesObservers
	| observer |
	observer := SPCObserver new.
	SPCSpellChecker instance loadLanguage: SPCHunspellLanguage squeak.
	spellChecker class registerObserver: observer.
	spellChecker removeLanguage: SPCHunspellLanguage squeak.
	self assert: (observer event = #loadedLanguages)