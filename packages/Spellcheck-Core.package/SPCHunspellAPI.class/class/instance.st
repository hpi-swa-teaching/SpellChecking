library
instance

	^ (Instance isNil) ifTrue: [
		Instance := self basicNew initialize; yourself
	] ifFalse: [ ( Instance isNilObject ) ifTrue: [ 
		Instance := self basicNew initialize; yourself ] ]