initialize-release
setUp
	super setUp.
	SPCSpellChecker loadedLanguages: nil.
	SPCSpellChecker instance reloadHunspellHandle.
	pluggableTextMorphPlus := PluggableTextMorphPlus new.
	pluggableTextMorphPlus setText: 'This test should not be sed.'.
	pluggableTextMorphPlus styler: SPCTextStyler new.
	pluggableTextMorphPlus textMorph editor selectFrom: 25 to: 27