private
createHandle: dictionaryPath affix: affixPath
	| handle |
	"Local variable for debugging."
	self class libraryExists ifTrue: [
		handle :=self apiCreateHandle: affixPath dPath: dictionaryPath.
		self apiHandle: handle
	]