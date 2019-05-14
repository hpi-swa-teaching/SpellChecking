initialize-release
startUp:
	
	self dictionaries do: [ :each |
		self addDictionaryBasic: each
	]