testing
testDeselectAlternative
	workspace contents: wrongWord.
	correctionUI workspace: workspace.
	correctionUI selectedAlternative: 'squeak'.
	self assert: (correctionUI selectedAlternative = '').
	self assert: (correctionUI workspace contents = 'squeak')
	
	