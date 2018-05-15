api callouts
apiCreateHandle: anAffPath dPath: aDPath

	<cdecl: void* 'Hunspell_create' (char* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed