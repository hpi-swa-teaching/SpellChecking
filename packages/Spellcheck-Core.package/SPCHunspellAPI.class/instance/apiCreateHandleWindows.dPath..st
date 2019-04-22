api callouts
apiCreateHandleWindows: anAffixPath dPath: aDictionaryPath

	<cdecl: void* 'Hunspell_create' (char* char*) module:'libhunspellx64.dll'>
	^ self externalCallFailed