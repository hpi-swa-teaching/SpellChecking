api callouts
apiRemove: aHandle word: aString

	<cdecl: long 'Hunspell_remove' (void* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed