as yet unclassified
testSpellcheckingPackageWithMetaclasses
	| browser methods|
	browser := SPCSystemBrowser new.
	browser selectSystemCategory: #'Spellcheck-Tests'.
	browser informAboutErrors: false.
	methods := browser checkPackageSpelling.
	self deny: ((methods select: [ :asso | asso key = 'SPCHunspellAPIDecoratorTests classgermanDictionary'] )isEmpty)