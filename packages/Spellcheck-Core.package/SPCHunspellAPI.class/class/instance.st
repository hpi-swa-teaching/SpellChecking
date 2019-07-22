library
instance

	Instance ifNil: [
		Instance := SPCHunspellAPIDecorator new
	].

	"This part is necessary because older Versions used HunspellAPI as an Instance, but we need a Decorator"
	(Instance isDecorator) ifFalse: [ Instance := SPCHunspellAPIDecorator new ].
	^ Instance 