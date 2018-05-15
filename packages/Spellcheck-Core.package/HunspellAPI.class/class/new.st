instance creation
new

	^(Smalltalk os platformName asLowercase caseOf: {
		['mac os'] -> [HunspellAPIMac].
		['win32'] -> [HunspellAPIWindows].
		['unix'] -> [HunspellAPIUnix]})
			basicNew
			initialize;
			yourself