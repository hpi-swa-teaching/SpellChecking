api callouts
apiSuggest: aHandle list: anEmptyList word: aString

	<cdecl: long 'Hunspell_suggest' (void* HunspellSuggestList* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed