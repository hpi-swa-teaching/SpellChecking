initialize-release
notify
	self observers do: [ :observer | observer changed: #loadedLanguages ]