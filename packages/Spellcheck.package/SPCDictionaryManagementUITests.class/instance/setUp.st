initialize-release
setUp 

	ui := SPCDictionaryManagementUITestStub new.
	self wantsToTest: ui open.
	
	wrongWord := 'squeack'.
	germanWord := 'Klabautermann'