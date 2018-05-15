api callouts
apiAdd: aHandle dictionary: aDPath

	<cdecl: long 'Hunspell_add_dic' (void* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed