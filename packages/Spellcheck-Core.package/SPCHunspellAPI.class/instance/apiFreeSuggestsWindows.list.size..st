api callouts
apiFreeSuggestsWindows: aHandle list: aSuggestionList size: anInteger

	<cdecl: void 'Hunspell_free_list' (void* SPCHunspellSuggestList* long) module:'libhunspellx64.dll'>
	^self externalCallFailed