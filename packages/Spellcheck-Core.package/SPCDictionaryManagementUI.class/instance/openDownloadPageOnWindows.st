dictionary loading
openDownloadPageOnWindows

	| aCollection |
	
	aCollection := OrderedCollection new.
	aCollection add: (SPCDictionaryManagementUI downloadPageLink).
	(ExternalWindowsOSProcess programName: 'explorer' arguments: aCollection initialEnvironment: '') value