api callouts
apiCheckWordWindows: aHandle Text: aString

	<cdecl: long 'Hunspell_spell' (void* char*) module:'libhunspellx64.dll'>
	^ self externalCallFailed