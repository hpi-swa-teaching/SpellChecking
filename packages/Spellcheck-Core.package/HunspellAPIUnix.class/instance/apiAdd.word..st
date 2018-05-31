api callouts
apiAdd: aHandle word: aString

	<cdecl: long 'Hunspell_add' (void* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed