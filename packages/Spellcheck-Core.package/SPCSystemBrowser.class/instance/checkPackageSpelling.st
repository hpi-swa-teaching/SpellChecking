spellchecking
checkPackageSpelling
	| classList allMethods methods originalStateSelectedClass methodsToShow allAssociations class |
	"Returns classes in selected system category."
	originalStateSelectedClass := self selectedClassName.
	classList := self classList.
	methodsToShow := OrderedCollection new.
	allAssociations := OrderedCollection new.
	allMethods := self getAllMethodsForClasses: classList.
	allMethods associationsDo: [: association |
		(association key asString endsWith: ' class') ifTrue: [
			class := self getClassNameForMetaClass: association key asString.
			self selectClassNamed: class asString.
			class := self selectedClass class.
		] ifFalse: [
			self selectClassNamed: association key asString.
			class := self selectedClass.
		].
		methods := self getMethodSourceCodeFor: association value fromClass: class.
		methods := self findMessagesWithSpellingErrors: methods.
		"Precede method names with class names, as multiple classes might have class with same name."
		methods := methods associations.
		methods do: [: asso | asso key: association key asString, asso key].
		methodsToShow addAll: methods.
		methods := association value associations.
		methods do: [: asso | asso key: association key asString , asso key].
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
	