api callouts
apiSuggestWindows: aHandle list: anEmptyList word: aString

	<cdecl: long 'Hunspell_suggest' (void* HunspellSuggestList* char*) module:'libhunspellx64.dll'>
	^ self externalCallFailed