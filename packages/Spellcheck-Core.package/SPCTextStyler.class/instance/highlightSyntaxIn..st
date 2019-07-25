styling
highlightSyntaxIn: aText

	self workspace
		 ifNotNil: [workspace shouldStyle ifTrue: [ super privateStyle: aText] ifFalse: [ self unstyle: aText ]] 
		 ifNil: [ super privateStyle: aText ]