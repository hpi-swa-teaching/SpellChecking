parsing
shouldProcessWord

	^ (self parseStringsOnly and: [self isInStringOrComment]) or: [self parseStringsOnly not]