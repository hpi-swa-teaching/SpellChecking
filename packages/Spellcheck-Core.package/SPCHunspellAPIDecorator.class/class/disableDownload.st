accessing
disableDownload
	DisableDownload ifNil: [ DisableDownload := false ].
	^ DisableDownload