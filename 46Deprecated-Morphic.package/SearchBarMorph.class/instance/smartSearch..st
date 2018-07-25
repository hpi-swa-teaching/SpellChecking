search
smartSearch: evt
	"Take the user input and perform an appropriate search"
	| input newContents |
	input := self contents asString ifEmpty:[^self].
	(Smalltalk bindingOf: input) ifNotNil:[:assoc| | global |
		"It's a global or a class"
		global := assoc value.
		^ToolSet browse: (global isBehavior ifTrue:[global] ifFalse:[global class]) selector: nil.
	].
	(SystemNavigation new allImplementorsOf: input asSymbol) ifNotEmpty:[:list|
		^SystemNavigation new
			browseMessageList: list
			name: 'Implementors of ' , input
	].
	input first isUppercase ifTrue:[
		(UIManager default classFromPattern: input withCaption: '') ifNotNil:[:aClass|
			^ToolSet browse: aClass selector: nil.
		].
	] ifFalse:[
		^ToolSet default browseMessageNames: input
	].
	newContents := input, ' -- not found.'.
	self 
		newContents: newContents; 
		selectFrom: input size+1 to: newContents size.
	evt hand newKeyboardFocus: self