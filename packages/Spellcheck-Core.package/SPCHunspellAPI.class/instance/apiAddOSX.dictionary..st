api callouts
apiAddOSX: aHandle dictionary: aDictionaryPath

	<cdecl: long 'Hunspell_add_dic' (void* char*) module:'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed