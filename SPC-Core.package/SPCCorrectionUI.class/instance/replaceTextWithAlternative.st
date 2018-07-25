select alternative
replaceTextWithAlternative

	| updatedText offset |
	offset := self selectedAlternative size - self currentWord size. "needs to be calculated at the beginning because currentWord cannot be used after the word has been replaced"
	updatedText := self inputText replaceFrom: self startIndex to: self endIndex with: self selectedAlternative.
	self workspace ifNotNil: [self workspace contents: updatedText].
	self updateWrongWordsAfter: self endIndex By: offset