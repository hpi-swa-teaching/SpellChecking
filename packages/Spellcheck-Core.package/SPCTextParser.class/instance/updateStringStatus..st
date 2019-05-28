accessing
updateStringStatus: aCharacter
	
	self stringStartSymbol ifNil: [
		self stringStartSymbol: aCharacter.
	].
	(self isInString and: [aCharacter = self stringStartSymbol]) ifTrue: [
		self isInString: false.
		self stringStartSymbol: nil.
		^ self.
	].
	self isInString ifFalse: [
		self isInString: true.	
	]