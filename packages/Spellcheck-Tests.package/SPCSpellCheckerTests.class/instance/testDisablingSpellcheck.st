testing
testDisablingSpellcheck

	| instance originalState |
	
	instance := SPCSpellChecker instance.
	self assert: (instance isNil not).
	originalState := SPCTextStyler spellCheckingEnabled.
	
	SPCTextStyler spellCheckingEnabled: false.
	instance reloadHunspellHandle.
	self assert: instance hunspell isNilObject.
	
	SPCTextStyler spellCheckingEnabled: true.
	instance reloadHunspellHandle.
	self assert: instance hunspell isNilObject not.
	
	SPCTextStyler spellCheckingEnabled: originalState.
	self assert: SPCTextStyler spellCheckingEnabled = originalState.
	