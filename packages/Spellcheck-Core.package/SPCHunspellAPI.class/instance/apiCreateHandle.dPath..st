api callouts
apiCreateHandle: anAffixPath dPath: aDictionaryPath

	<cdecl: void* 'Hunspell_create' (char* char*)>
	^ self externalCallFailed