private
createHandle
	| handle |
	"Left local variable for easier debugging."
	self class libraryExists ifTrue: [
		handle :=self apiCreateHandle: SPCSpellChecker defaultAffixPath dPath: SPCSpellChecker defaultDictionaryPath.
		self apiHandle: (handle)
	]