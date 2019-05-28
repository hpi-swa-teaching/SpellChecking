private
destroyHandle
	(self class libraryExists  and: [ self class handleNotNil]) ifTrue: [
		self apiDestroyHandle: self apiHandle
	]