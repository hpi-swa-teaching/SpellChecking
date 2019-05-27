as yet unclassified
openWith: methods

	| spllcheckingStylerIsOn |
	
	spllcheckingStylerIsOn := SPCTextStyler spellCheckingEnabled.
	
	SPCTextStyler spellCheckingEnabled: true.
	ToolBuilder open: ( SPCMethodTextViewer messageList: (methods values collect: [ :m | m methodReference] ) ).
	
	
	"TODO: Wie stellt man das Highlighting nur für dieses Menü an?"
	"SPCTextStyler spellCheckingEnabled: spllcheckingStylerIsOn"