as yet unclassified
testMenuWithSpellingAtTop
	| menu |
	menu := pluggableTextMorphPlus getMenuWithSpellcheckingAtTop:  (MenuMorph new defaultTarget: pluggableTextMorphPlus model).
	"We used the workspace to find out that a suggestion for the selected word is 'test'"
	self assert: ((menu items collect: [:item | item contents]) includes: 'test').
self assert: ((menu items collect: [:item | item contents]) includes: 'add to dictionary').