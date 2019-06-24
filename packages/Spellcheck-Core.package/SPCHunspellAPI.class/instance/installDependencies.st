initialize-release
installDependencies
	self class disableDownload ifFalse: [
		self downloadDictionaries;
			downloadLibraries
	]