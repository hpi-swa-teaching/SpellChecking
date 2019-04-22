api callouts
apiCheckWordLinux: aHandle Text: aString

	<cdecl: long 'Hunspell_spell' (void* char*) module:'libhunspell-1.6.so.0'>
	^ self externalCallFailed