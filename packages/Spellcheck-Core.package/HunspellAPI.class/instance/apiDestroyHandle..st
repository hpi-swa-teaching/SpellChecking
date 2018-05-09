api callouts
apiDestroyHandle: aHandle
	<cdecl: void 'Hunspell_destroy' (void*) module: 'libhunspell.dll'>
	^ self externalCallFailed