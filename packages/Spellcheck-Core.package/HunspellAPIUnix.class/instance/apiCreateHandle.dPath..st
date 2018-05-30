api callouts
apiCreateHandle: anAffPath dPath: aDPath

	<cdecl: void* 'Hunspell_create' (char* char*) module: 'hunspell.so'>
	^ self externalCallFailed