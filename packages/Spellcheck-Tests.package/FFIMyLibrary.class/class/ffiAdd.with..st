as yet unclassified
ffiAdd: firstNumber with: secondNumber
	<cdecl: long 'Add' (long long) module:'MyAwesomeLibrary.dll'>
	^self externalCallFailed 