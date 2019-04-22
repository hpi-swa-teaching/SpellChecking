api callouts
apiAddWindows: aHandle word: aString

	<cdecl: long 'Hunspell_add' (void* char*) module:'libhunspellx64.dll'>
	^ self externalCallFailed