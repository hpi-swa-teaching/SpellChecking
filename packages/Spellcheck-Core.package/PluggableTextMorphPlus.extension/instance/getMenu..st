*Spellcheck-Core
getMenu: shiftKeyState
	"Answer the menu for this text view. We override the superclass implementation to
	so we can give the selection interval to the model."
	
	| menu aMenu word |
	getMenuSelector == nil ifTrue: [^ nil].
	getMenuSelector numArgs < 3 ifTrue: [
		word := (self textMorph editor selection) asString withBlanksCondensed asLowercase.
		^ self addSpellcheckingMenuItems: (super getMenu: shiftKeyState) word: word.
		].
	" I don't know when the rest is called"
	menu := MenuMorph new defaultTarget: model.
	getMenuSelector numArgs = 3 ifTrue:
		[aMenu := model 
			perform: getMenuSelector 
			with: menu 
			with: shiftKeyState 
			with: self selectionInterval.
		getMenuTitleSelector ifNotNil: 
			[aMenu addTitle: (model perform: getMenuTitleSelector)].
		^ self getMenuExtendedWithDicThesaurusItems: shiftKeyState originalMenu: aMenu].
	^ self error: 'The getMenuSelector must be a 1- or 2 or 3-keyword symbol'