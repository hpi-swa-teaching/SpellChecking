api callouts
apiCreateHandleOSX: anAffixPath dPath: aDictionaryPath

	<cdecl: void* 'Hunspell_create' (char* char*) module: 'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed