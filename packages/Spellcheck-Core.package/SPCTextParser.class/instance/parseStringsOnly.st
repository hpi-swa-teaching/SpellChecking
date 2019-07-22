accessing
parseStringsOnly

	^ parseStringsOnly ifNil: [ ^ self class parseStringsOnly ]