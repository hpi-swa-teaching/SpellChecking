api callouts
apiFreeSuggests: aHandle list: aSuggestionList size: anInteger

	<cdecl: void 'Hunspell_free_list' (void* HunspellSuggestList* long) module:'libhunspell-darwin-x86-32.dylib'>
	^self externalCallFailed