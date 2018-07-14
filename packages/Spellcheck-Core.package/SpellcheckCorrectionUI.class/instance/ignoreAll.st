buttons
ignoreAll

	self wrongWords ifNotNil: [
		self wrongWords keysAndValuesDo: [ :key :value | 
			SpellChecker instance ignoreWord: (self inputText string copyFrom: key to: value)]].
	self clear