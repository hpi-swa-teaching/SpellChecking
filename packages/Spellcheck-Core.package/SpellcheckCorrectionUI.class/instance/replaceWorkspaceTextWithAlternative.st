as yet unclassified
replaceWorkspaceTextWithAlternative
	Transcript show: selectedIndex asString.
	workspace contents: (inputText replaceFrom: self startIndex to: self endIndex with: self selectedAlternative).