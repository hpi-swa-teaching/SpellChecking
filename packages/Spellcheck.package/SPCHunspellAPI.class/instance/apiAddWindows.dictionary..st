api callouts
apiAddWindows: aHandle dictionary: aDictionaryPath

	<cdecl: long 'Hunspell_add_dic' (void* char*) module:'libhunspellx64.dll'>
	^ self externalCallFailed