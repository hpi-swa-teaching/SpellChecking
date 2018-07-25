select alternative
replaceTextWithAlternative

	| updatedText offset |
	offset := self selectedAlternative size - self currentWord size. "this needs to be calculated at the beginning because currentWord can not be used after the word was replaced"
	updatedText := self inputText replaceFrom: self startIndex to: self endIndex with: self selectedAlternative.
	self workspace ifNotNil: [self workspace contents: updatedText].
	self updateWrongWordsAfter: self endIndex By: offset