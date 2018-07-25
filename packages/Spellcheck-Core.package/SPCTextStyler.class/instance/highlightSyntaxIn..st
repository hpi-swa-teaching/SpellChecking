styling
highlightSyntaxIn: aText

	self workspace
		 ifNotNil: [Workspace shouldStyle ifTrue: [super privateStyle: aText]] 
		 ifNil: [SHTextStylerST80 syntaxHighlightingAsYouType ifTrue: [super privateStyle: aText]]