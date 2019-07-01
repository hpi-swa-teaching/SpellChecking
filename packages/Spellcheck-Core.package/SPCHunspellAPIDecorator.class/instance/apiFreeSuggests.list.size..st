api callouts
apiFreeSuggests: aHandle list: aSuggestionList size: anInteger

	<cdecl: void 'Hunspell_free_list' (void* SPCHunspellSuggestList* long)>
	^self externalCallFailed