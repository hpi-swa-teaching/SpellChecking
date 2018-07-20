initialize-release
setUp 

	ui := SpellcheckOrganizeUI new.
	self wantsToTest: ui open.
	
	wrongWord := 'squeack'.
	germanWord := 'Klabautermann'