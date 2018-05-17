api callouts
apiDestroyHandle: aHandle
	<cdecl: void 'Hunspell_destroy' (void*) module: 'libhunspell-darwin-x86-32.dylib'>
	^ self externalCallFailed