spellchecking
checkPackageSpelling
	| classList allMethods methods originalStateSelectedClass methodsToShow allAssociations|
	"Returns classes in selected system category."
	originalStateSelectedClass := self selectedClassName.
	classList := self classList.
	methodsToShow := OrderedCollection new.
	allAssociations := OrderedCollection new.
	allMethods := self getAllMethodsForClasses: classList.
	allMethods associationsDo: [: association |
		self selectClassNamed: association key.
		methods := self getMethodSourceCodeFor: association value fromClass: self selectedClass.
		methods := self findMessagesWithSpellingErrors: methods.
		"Precede method names with class names, as multiple classes might have class with same name."
		methods := methods associations.
		methods do: [: asso | asso key: association key , asso key].
		methodsToShow addAll: methods.
		methods := association value associations.
		methods do: [: asso | asso key: association key , asso key].
		allAssociations addAll: methods.
	].
	allAssociations := allAssociations select: [ : association | self AssociationArray: methodsToShow hasKey: association key].
	self selectClassNamed: originalStateSelectedClass.
	self informAboutErrors ifTrue: [
		allAssociations isEmpty ifTrue: [self inform: 'Selected Package has no methods with spelling errors.'. ^ self].
	].
	
	self informAboutErrors ifTrue: [
		allAssociations isEmpty ifFalse:  [ SPCMethodTextViewer openWith: allAssociations ]
	].
	^ allAssociations
	