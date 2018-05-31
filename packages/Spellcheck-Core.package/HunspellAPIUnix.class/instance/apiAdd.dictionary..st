api callouts
apiAdd: aHandle dictionary: aDPath

	<cdecl: long 'Hunspell_add_dic' (void* char*) module: 'hunspell.so'>
	^ self externalCallFailed