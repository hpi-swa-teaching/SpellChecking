api callouts
apiAdd: aHandle word: aString

	<cdecl: long 'Hunspell_add' (void* char*) module: 'libhunspell.dll'>
	^ self externalCallFailed