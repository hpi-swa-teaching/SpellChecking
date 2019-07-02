testing
testDownloadFileTo
	
		| resourceDir |
		
		resourceDir := SPCHunspellAPIDecorator ressourceDirectory.
		SPCHunspellAPIDecorator basicNew downloadFileTo: resourceDir fromURL: 'https://raw.githubusercontent.com/hpi-swa-teaching/SpellChecking/dev/.travis.yml' toFileNamed: 'SPCDownloadTest' inBinary: false.
		self assert: (resourceDir fileExists: 'SPCDownloadTest').
		resourceDir deleteFileNamed: 'SPCDownloadTest'.
		self deny: (resourceDir fileExists: 'SPCDownloadTest').
		
	"needs to be moved over to decorator test"