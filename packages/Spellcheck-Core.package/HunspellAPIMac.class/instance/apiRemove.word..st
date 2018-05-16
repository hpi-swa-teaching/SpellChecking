api callouts
apiRemove: aHandle word: aString

	<cdecl: long 'Hunspell_remove' (void* char*) module: 'libhunspell-1.6.dylib'>
	^ self externalCallFailed