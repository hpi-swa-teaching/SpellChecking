spellchecking
destroyHandle

	self instances do: [ :instance | instance destroyHandle ].
	self instances: OrderedCollection new