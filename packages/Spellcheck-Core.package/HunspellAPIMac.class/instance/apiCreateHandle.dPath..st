api callouts
apiCreateHandle: anAffPath dPath: aDPath

	<cdecl: void* 'Hunspell_create' (char* char*) module: 'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed