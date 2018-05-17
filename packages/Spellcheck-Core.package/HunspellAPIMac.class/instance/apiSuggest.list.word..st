api callouts
apiSuggest: aHandle list: anEmptyList word: aString

	<cdecl: long 'Hunspell_suggest' (void* HunspellSuggestList* char*) module: 'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed