api callouts
apiSuggestLinux: aHandle list: anEmptyList word: aString

	<cdecl: long 'Hunspell_suggest' (void* HunspellSuggestList* char*) module:'libhunspell-1.6.so.0'>
	^ self externalCallFailed