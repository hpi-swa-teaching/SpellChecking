api callouts
apiAddOSX: aHandle word: aString

	<cdecl: long 'Hunspell_add' (void* char*) module:'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed