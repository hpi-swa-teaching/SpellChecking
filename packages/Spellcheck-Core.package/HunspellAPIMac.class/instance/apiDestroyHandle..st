api callouts
apiDestroyHandle: aHandle
	<cdecl: void 'Hunspell_destroy' (void*) module: 'libhunspell-1.6.dylib'>
	^ self externalCallFailed