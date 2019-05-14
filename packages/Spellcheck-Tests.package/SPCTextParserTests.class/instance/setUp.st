initialize-release
setUp
	super setUp.
	parser := SPCTextParser new.
	originalStateStringsOnly := SPCTextParser parseStringsOnly.
	SPCTextParser parseStringsOnly: false