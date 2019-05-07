initialize-release
setUp 
	super setUp.
	ui := SPCCorrectionUI new open.
	self wantsToTest: ui