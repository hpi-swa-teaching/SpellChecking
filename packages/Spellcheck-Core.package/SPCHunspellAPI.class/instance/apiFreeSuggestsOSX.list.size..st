api callouts
apiFreeSuggestsOSX: aHandle list: aSuggestionList size: anInteger

	<cdecl: void 'Hunspell_free_list' (void* SPCHunspellSuggestList* long) module:'libhunspell-darwin-x86-32.dylib'>
	^self externalCallFailed