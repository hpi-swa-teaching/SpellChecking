buttons
ignoreAll

	wrongWords ifNotNil: [
		wrongWords keysAndValuesDo: [ :key :value | 
			SpellChecker instance ignoreWord: (inputText string copyFrom: key to: value)]].
	self clear