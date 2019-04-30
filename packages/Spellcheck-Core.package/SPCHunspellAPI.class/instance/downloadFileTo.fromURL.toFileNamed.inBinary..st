library installation
downloadFileTo: aFileDirectory fromURL: aString toFileNamed: anotherString inBinary: aBoolean
	| downloadDir downloadedLibrary |
	downloadDir := aFileDirectory.
	downloadedLibrary := HTTPClient httpGet: aString.
	downloadDir newFileNamed: anotherString do: [ :stream |
			aBoolean ifTrue: [
				stream binary; 
				nextPutAll: downloadedLibrary binary upToEnd
			]
			ifFalse: [
				stream nextPutAll: downloadedLibrary upToEnd
			]
	].