testing
testStylingInWorkspaceDisabled

	| runArray workspace |
	workspace := Workspace new.
	workspace shouldStyle: false.
	spellingStyler workspace: workspace.
	spellingStyler privateStyle: textWithoutMistake.
	runArray := textWithoutMistake runs.	
	self assert: (runArray values = #(#()))