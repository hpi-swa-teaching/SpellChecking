primitives
ffiAdd: firstNumber with: secondNumber
	<cdecl: long 'Add' (long long)>
	^self externalCallFailed 