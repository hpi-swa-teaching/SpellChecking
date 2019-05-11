testing
tearDown	
	
	super tearDown.
	self subject ifNotNil: [
		self subject delete	
	]