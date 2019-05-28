as yet unclassified
openWith: methods

	ToolBuilder open: ( SPCMethodTextViewer messageList: (methods collect: [ :m | m value methodReference] ) ).
	
	
	"TODO: Wie stellt man das Highlighting nur für dieses Menü an?"
	"SPCTextStyler spellCheckingEnabled: spllcheckingStylerIsOn"