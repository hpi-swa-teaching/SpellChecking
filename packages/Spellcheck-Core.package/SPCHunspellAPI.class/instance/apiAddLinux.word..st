api callouts
apiAddLinux: aHandle word: aString

	<cdecl: long 'Hunspell_add' (void* char*) module:'libhunspell-1.6.so.0'>
	^ self externalCallFailed