initialize-release
setUp 
	super setUp.
	ui := SPCDictionaryManagementUITestStub new.
	self wantsToTest: ui open.
	
	wrongWord := 'squeack'.
	germanWord := 'Klabautermann'