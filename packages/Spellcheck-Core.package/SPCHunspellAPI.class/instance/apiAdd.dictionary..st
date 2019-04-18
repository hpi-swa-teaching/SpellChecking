api callouts
apiAdd: aHandle dictionary: aDictionaryPath

	<cdecl: long 'Hunspell_add_dic' (void* char*) module:'libhunspell-1.6.so.0'>
	^ self externalCallFailed