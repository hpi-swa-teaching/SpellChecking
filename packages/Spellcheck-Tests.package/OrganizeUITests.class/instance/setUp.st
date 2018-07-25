initialize-release
setUp 

	ui := SPCOrganizeUI new.
	self wantsToTest: ui open.
	
	wrongWord := 'squeack'.
	germanWord := 'Klabautermann'