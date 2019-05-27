library
instance

	^ Instance ifNil: [Instance := self basicNew initialize; yourself]