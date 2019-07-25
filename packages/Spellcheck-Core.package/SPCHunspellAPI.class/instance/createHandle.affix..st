private
createHandle: dictionaryPath affix: affixPath

	| handle |
	
	"Local variable for debugging."
	self class libraryExists ifTrue: [
		self dictionaryPath: dictionaryPath.
		self affixPath: affixPath.
		handle :=self apiCreateHandle: affixPath dPath: dictionaryPath.
		self apiHandle: handle
	]