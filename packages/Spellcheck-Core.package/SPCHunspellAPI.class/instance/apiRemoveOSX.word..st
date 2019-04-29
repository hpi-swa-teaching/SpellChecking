api callouts
apiRemoveOSX: aHandle word: aString

	<cdecl: long 'Hunspell_remove' (void* char*) module:'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed