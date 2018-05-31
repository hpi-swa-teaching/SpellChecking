api callouts
apiCheckWord: aHandle Text: aString

	<cdecl: long 'Hunspell_spell' (void* char*) module: 'hunspell.so'>
	^ self externalCallFailed