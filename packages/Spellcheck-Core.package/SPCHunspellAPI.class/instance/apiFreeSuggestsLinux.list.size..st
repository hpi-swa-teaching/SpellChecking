api callouts
apiFreeSuggestsLinux: aHandle list: aSuggestionList size: anInteger

	<cdecl: void 'Hunspell_free_list' (void* SPCHunspellSuggestList* long) module:'libhunspell-1.6.so.0'>
	^self externalCallFailed