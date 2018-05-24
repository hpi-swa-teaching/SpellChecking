*Spellcheck-Core
getMenu: shiftKeyState
	"Answer the menu for this text view. We override the superclass implementation to
	so we can give the selection interval to the model."
	
	getMenuSelector == nil ifTrue: [^ nil].
	getMenuSelector numArgs < 3 
	ifTrue: [^ self getMenuWithSpellcheckingAtTop:  (super getMenu: shiftKeyState)]
	ifFalse: [^ super getMenu: shiftKeyState.].