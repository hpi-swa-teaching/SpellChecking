api callouts
apiCreateHandle: anAffPath dPath: aDPath

	<cdecl: void* 'Hunspell_create' (char* char*) module: 'libhunspell-1.6.dylib'>
	^ self externalCallFailed