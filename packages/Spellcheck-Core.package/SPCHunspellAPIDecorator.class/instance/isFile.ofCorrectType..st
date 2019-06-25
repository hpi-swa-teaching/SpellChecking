dictionaries
isFile: aFilePath ofCorrectType: aType

	| dictionaryPath |

	aFilePath ifNil: [
		self alertOnError ifTrue:[
			UIManager default inform: 'No file selected. Process aborted.'
		].
		^ false.
	] ifNotNil: [
		dictionaryPath := aFilePath fullName.
		 ((dictionaryPath findSubstring: aType in: dictionaryPath startingAt: (dictionaryPath size - (aType size)) matchTable: (String classPool at: #CaseInsensitiveOrder)) = 0) ifTrue: [
			self alertOnError ifTrue:[
				UIManager default inform: 'Type of File invalid. Only ', aType, '-files allowed. Process aborted'
			].
			^ false	
		] ifFalse: [
			^ true
		].
	]