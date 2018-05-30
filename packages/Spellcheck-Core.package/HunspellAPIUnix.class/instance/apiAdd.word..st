api callouts
apiAdd: aHandle word: aString

	<cdecl: long 'Hunspell_add' (void* char*) module: 'hunspell.so'>
	^ self externalCallFailed