testing
testGetColorFromRunArray
	| runArray foundColor |
	runArray := RunArray  new: 2.
	runArray at: 1 put: (TextColor color: Color red).
	runArray at: 2 put: (TextEmphasis bold).
	foundColor := SPCTextStyler getColorFromRunArray: runArray.
	self assert: (foundColor = Color red) 