initialize-release
notifyObservers: aSymbol

	self observers do: [ :observer | observer changed: aSymbol]