private
createHandle
	| handle |
	"Left local variable for easier debugging."
	handle :=self apiCreateHandle: SPCSpellChecker defaultAffixPath dPath: SPCSpellChecker defaultDictionaryPath.
	self apiHandle: (handle)