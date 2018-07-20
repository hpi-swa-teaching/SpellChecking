buttons
ignoreAll

	self wrongWords ifNotNil: [
		self wrongWords keysAndValuesDo: [ :key :value | 
			SpellChecker instance addWordToIgnoreList: (self inputText string copyFrom: key to: value)]].
	self clear