Build
buildWith: builder

	| windowSpec max result |

	max := 0.3.
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@max) -> [self buildMessageListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.
	
	windowSpec label: 'Spelling errors were found in the following methods:'.
	result := builder build: windowSpec.
	autoSelectString ifNotNil:[self changed: #autoSelect].
	^result