parsing
shouldProcessWord
	^ (SPCTextParser parseStringsOnly and: [self isInStringOrComment]) or: [SPCTextParser parseStringsOnly not]