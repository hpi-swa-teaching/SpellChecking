api callouts
apiCreateHandleLinux: anAffixPath dPath: aDictionaryPath

	<cdecl: void* 'Hunspell_create' (char* char*) module:'libhunspell-1.6.so.0'>
	^ self externalCallFailed