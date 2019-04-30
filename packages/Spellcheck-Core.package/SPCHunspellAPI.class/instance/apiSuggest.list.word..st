api callouts
apiSuggest: aHandle list: anEmptyList word: aString

	<cdecl: long 'Hunspell_suggest' (void* HunspellSuggestList* char*)>
	^ self externalCallFailed