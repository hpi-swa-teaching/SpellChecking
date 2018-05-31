as yet unclassified
instance
	^ Instance ifNil: [Instance := self basicNew initialize; 
										yourself]