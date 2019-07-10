dictionary loading
openDownloadPage

	(Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [self openDownloadPageOnMacOS].
		['win32'] -> [self openDownloadPageOnWindows].
		['unix'] -> [self openDownloadPageOnUnix].
	})