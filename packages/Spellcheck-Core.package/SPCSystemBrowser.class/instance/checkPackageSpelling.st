spellchecking
checkPackageSpelling
	| classList originalStateSelectedClass allAssociations |
	"Returns classes in selected system category."
	originalStateSelectedClass := self selectedClassName.
	classList := self classList.
	allAssociations := self getMethodReferencesForWronglySpelledMethodsForClasses: classList.
	self selectClassNamed: originalStateSelectedClass.
	self informAboutErrors ifTrue: [
		allAssociations isEmpty ifTrue: [self inform: 'Selected Package has no methods with spelling errors.'. ^ self].
	].
	
	self informAboutErrors ifTrue: [
		allAssociations isEmpty ifFalse:  [ SPCMethodTextViewer openWith: allAssociations ]
	].
	^ allAssociations
	