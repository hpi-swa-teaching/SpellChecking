api callouts
apiCheckWordOSX: aHandle Text: aString

	<cdecl: long 'Hunspell_spell' (void* char*) module:'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed