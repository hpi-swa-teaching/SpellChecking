initialize-release
setUp
	super setUp.
	parser := SPCTextParser new.
	parser parseStringsOnly: false.