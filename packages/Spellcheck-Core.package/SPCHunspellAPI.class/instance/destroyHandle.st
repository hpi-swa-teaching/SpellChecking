private
destroyHandle

	(self class libraryExists  and: [ self handleNotNil]) ifTrue: [
		self apiDestroyHandle: self apiHandle
	]