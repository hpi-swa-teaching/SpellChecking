select alternative
replaceTextWithAlternative

	| updatedText |
	updatedText := self inputText replaceFrom: self startIndex to: self endIndex with: self selectedAlternative.
	self workspace ifNotNil: [self workspace contents: updatedText].
	self updateWrongWordsAfter: self endIndex By: self selectedAlternative size - self currentWord size