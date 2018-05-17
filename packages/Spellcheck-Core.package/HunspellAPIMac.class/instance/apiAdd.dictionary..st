api callouts
apiAdd: aHandle dictionary: aDPath

	<cdecl: long 'Hunspell_add_dic' (void* char*) module: 'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed