api callouts
apiAdd: aHandle dictionary: aDictionaryPath

	<cdecl: long 'Hunspell_add_dic' (void* char*)>
	^ self externalCallFailed