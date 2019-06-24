dictionary and ignore list
addWordToDictionary: aString

	| aWord |
	(self parser parseText: aString) keysAndValuesDo: [ :start :end |
		aWord :=  (aString copyFrom: start to: end).
		self addedWords add: aWord.
		self hunspell addWordToDictionary: aWord
	].
	self class notifyObservers: #addedWords