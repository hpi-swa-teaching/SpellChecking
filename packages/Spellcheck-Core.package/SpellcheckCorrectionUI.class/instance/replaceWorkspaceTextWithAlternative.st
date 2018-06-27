select alternative
replaceWorkspaceTextWithAlternative

	workspace contents: (inputText replaceFrom: self startIndex to: self endIndex with: self selectedAlternative).
	self updateWrongWordsAfter: self endIndex By: (self selectedAlternative size - (self currentWord size))