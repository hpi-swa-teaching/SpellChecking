testing
testStylingInWorkspaceEnabled

	| runArray runArraySt80 workspace textWithoutMistakeUnstyled st80Styler |
	st80Styler := SHTextStylerST80 new.
	textWithoutMistakeUnstyled := 'a := 5.' asText.
	workspace := Workspace new.
	workspace shouldStyle: true.
	
	spellingStyler workspace: workspace.
	spellingStyler privateStyle: textWithoutMistake.
	runArray := textWithoutMistake runs.
		
	st80Styler workspace: workspace.
	st80Styler privateStyle: textWithoutMistakeUnstyled.
	runArraySt80 := textWithoutMistakeUnstyled runs.
	self assert: (runArray = runArraySt80).