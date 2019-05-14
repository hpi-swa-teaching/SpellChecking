parsing
shouldProcessWord
	^ (SPCTextParser parseStringsOnly and: [self isInString]) or: [SPCTextParser parseStringsOnly not]