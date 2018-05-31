*Spellcheck-Core-override
stylerClass

	^ super stylerClass ifNil: [Smalltalk classNamed: 'SpellingTextStyler']