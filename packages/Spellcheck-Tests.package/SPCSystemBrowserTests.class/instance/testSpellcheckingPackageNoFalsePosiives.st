as yet unclassified
testSpellcheckingPackageNoFalsePosiives
	| browser methods|
	browser := SPCSystemBrowser new.
	browser selectSystemCategory: #'Spellcheck-Tests'.
	browser informAboutErrors: false.
	methods := browser checkPackageSpelling.
	self assert: ((methods select: [ :asso | asso key = 'SPCClassWithWronglySpelledMessagecorrectlySpelledMethod'] )isEmpty)