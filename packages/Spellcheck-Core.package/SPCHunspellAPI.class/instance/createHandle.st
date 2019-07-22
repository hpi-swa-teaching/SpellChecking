private
createHandle

	| handle |
	
	"Left local variable for easier debugging."
	self class libraryExists ifTrue: [
		self dictionaryPath: SPCSpellChecker defaultAffixPath.
		self affixPath: SPCSpellChecker defaultDictionaryPath.
		handle :=self apiCreateHandle: self affixPath dPath: self dictionaryPath.
		self apiHandle: (handle)
	]