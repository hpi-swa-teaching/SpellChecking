spellchecking
installDependencies
	"I  the future, every hunspellapi object may have own dependencies."
	self instances do: [ :instance | instance installDependencies ].