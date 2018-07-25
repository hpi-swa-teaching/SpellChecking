initialize-release
setUp 

	ui := SPCDictionaryManagementUI new.
	self wantsToTest: ui open.
	
	wrongWord := 'squeack'.
	germanWord := 'Klabautermann'