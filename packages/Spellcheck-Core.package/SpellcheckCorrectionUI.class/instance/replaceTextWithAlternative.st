select alternative
replaceTextWithAlternative
	| updatedText |
	updatedText := inputText replaceFrom: self startIndex to: self endIndex with: self selectedAlternative.
	workspace ifNotNil: [workspace contents: updatedText].
	self updateWrongWordsAfter: self endIndex By: (self selectedAlternative size - (self currentWord size))