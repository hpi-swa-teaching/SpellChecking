spellchecking
checkPackageSpelling
	| classList allMethods methods |
	"Returns classes in selected system category."
	classList := self classList.
	self halt.
	allMethods := self getAllMethodsForClasses: classList.
	allMethods associationsDo: [: association |
		methods := self getMethodSourceCodeFor: association value fromClass: association key.
		methods := self findMessagesWithSpellingErrors: methods.	
	]
	