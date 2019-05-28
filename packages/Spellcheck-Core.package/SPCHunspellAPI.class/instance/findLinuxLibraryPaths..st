private
findLinuxLibraryPaths: aFileDirectory
	"Squeak on linux has a subfolder for libraries which is searched for in this method."
	| libDir |
	libDir := aFileDirectory directoryNamed: 'lib'.
	libDir := libDir directoryNamed: 'squeak'.
	^ libDir directoryEntries
	