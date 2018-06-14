api callouts
apiCreateHandle: anAffPath dPath: aDPath

	<cdecl: void* 'Hunspell_create' (char* char*)>
	^ self externalCallFailed