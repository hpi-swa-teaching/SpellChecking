testing
colorsDiffer: runArray
	| highlightColor textColor |
	
	highlightColor := SPCTextStyler getColorFromRunArray: (runArray at: wrongWordIndex).
	textColor := SPCTextStyler getColorFromRunArray: (runArray at: wrongWordIndex - 2).
	
	^ (highlightColor = TextColor).