private
createHandle: dictionaryPath affix: affixPath
	| handle |
	"Local variable for debugging."
	handle :=self apiCreateHandle: affixPath dPath: dictionaryPath.
	self apiHandle: handle