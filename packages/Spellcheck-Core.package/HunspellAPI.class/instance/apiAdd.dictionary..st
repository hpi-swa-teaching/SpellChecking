api callouts
apiAdd: aHandle dictionary: aDPath

	<cdecl: long 'Hunspell_add_dic' (void* char*)>
	^ self externalCallFailed