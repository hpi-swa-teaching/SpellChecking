api callouts
apiCheckWord: aHandle Text: aString

	<cdecl: long 'Hunspell_spell' (void* char*)>
	^ self externalCallFailed