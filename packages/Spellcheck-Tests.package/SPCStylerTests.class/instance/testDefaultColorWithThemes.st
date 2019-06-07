testing
testDefaultColorWithThemes
	"Actual colors might differ depending on the selected theme, but they should change when swapping a bright against a dark theme."
	SqueakTheme create apply.
	
	self assert: (SPCTextStyler defaultColor = Color black).
	
	CommunityTheme createDark apply.
	self deny: (SPCTextStyler defaultColor = Color black)