preferences
spellCheckingEnabled: aBoolean

	SpellCheckingEnabled := aBoolean.
	SPCSpellChecker instance reloadHunspellHandle.
	aBoolean ifTrue: [
		SPCDictionaryManagementUI registerInWorldMenu
	] ifFalse: [
		SPCDictionaryManagementUI unregisterInWorldMenu
	]