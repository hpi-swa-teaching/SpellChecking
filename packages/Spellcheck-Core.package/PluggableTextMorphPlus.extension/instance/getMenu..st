*Spellcheck-Core
getMenu: shiftKeyState
	"Answer the menu for this text view. We override the superclass implementation to
	so we can give the selection interval to the model."
	
	| selectedText |
	getMenuSelector == nil ifTrue: [^ nil].
	getMenuSelector numArgs < 3 
	ifTrue: [
		selectedText := (self textMorph editor selection) asString withBlanksCondensed asLowercase.
		^ self getMenuWithSpellcheckingAtTop:  (super getMenu: shiftKeyState) word: selectedText.
	]
	ifFalse: [
		super getMenu: shiftKeyState.
	].