library
instance
	Instance ifNil: [
		Instance := SPCHunspellAPIDecorator new
	].
	(Instance isDecorator) ifFalse: [ Instance := SPCHunspellAPIDecorator new ].
	^ Instance 