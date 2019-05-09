library installation
downloadLibraries
	| ressourceDir libDir bitsPerWord |
	ressourceDir := FileDirectory default fullName.
	"This will set libDir to the parent of the resource dir."
	libDir := FileDirectory forFileName: ressourceDir. 
	bitsPerWord := self systemArchitecture.
	self progressBarTitle displayProgressAt: Sensor cursorPoint from: 0 to: 3 during: [ :bar |
			self executeLibraryDownloadTo: libDir on: bitsPerWord with: bar.
].