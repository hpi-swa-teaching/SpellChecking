api callouts
apiRemove: aHandle word: aString

	<cdecl: long 'Hunspell_remove' (void* char*) module: 'libhunspell.dll'>
	^ self externalCallFailed