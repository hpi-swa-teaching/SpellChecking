testing
testStylingWithThemes
	| colorOld colorNew runArray |
	"Actual colors might differ depending on the selected theme, but they should change when swapping a bright against a dark theme."
	SqueakTheme create apply.
	
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.
	colorOld := self getColorFromRunArray:  (runArray at: wrongWordIndex).
	
	CommunityTheme createDark apply.
	spellingStyler privateStyle: textWithMistake.
	runArray := textWithMistake runs.
	colorNew := self getColorFromRunArray:  (runArray at: wrongWordIndex).
	
	self deny: (colorOld = colorNew)