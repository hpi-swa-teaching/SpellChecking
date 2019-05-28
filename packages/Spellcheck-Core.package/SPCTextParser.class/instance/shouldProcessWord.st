parsing
shouldProcessWord
	^ (self parseStringsOnly and: [self isInString]) or: [self parseStringsOnly not]