accessing
informAboutErrors

	informAboutErrors ifNil: [self informAboutErrors: true].
	^ informAboutErrors 