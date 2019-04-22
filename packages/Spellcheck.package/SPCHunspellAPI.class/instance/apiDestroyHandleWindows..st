api callouts
apiDestroyHandleWindows: aHandle

	<cdecl: void 'Hunspell_destroy' (void*) module:'libhunspellx64.dll'>
	^ self externalCallFailed