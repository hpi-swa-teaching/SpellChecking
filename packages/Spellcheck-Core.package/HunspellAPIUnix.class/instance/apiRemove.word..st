api callouts
apiRemove: aHandle word: aString

	<cdecl: long 'Hunspell_remove' (void* char*) module: 'hunspell.so'>
	^ self externalCallFailed