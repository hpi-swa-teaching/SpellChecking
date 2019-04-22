api callouts
apiRemoveWindows: aHandle word: aString

	<cdecl: long 'Hunspell_remove' (void* char*) module:'libhunspellx64.dll'>
	^ self externalCallFailed