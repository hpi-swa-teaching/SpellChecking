accessing
dictionaries
	self class dictionaries ifNil: [
		self class dictionaries: Set new
	].
	^ Dictionaries