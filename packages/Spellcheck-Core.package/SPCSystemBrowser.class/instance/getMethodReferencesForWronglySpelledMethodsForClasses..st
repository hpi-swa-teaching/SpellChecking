spellchecking
getMethodReferencesForWronglySpelledMethodsForClasses: classList 
	| allMethodsWithMethodReferences allMethodsInClasses methodsOfCurrentClass methodsWithSpelingErrors class |

	allMethodsWithMethodReferences := OrderedCollection new.
	allMethodsInClasses := self getAllMethodsForClasses: classList.
	methodsWithSpelingErrors := OrderedCollection new.
	allMethodsInClasses associationsDo: [ :association |
		class := association key.
		methodsOfCurrentClass := self getMethodSourceCodeFor: association value fromClass: class.
		methodsOfCurrentClass := self findMessagesWithSpellingErrors: methodsOfCurrentClass.
		"Precede method names with class names, as multiple classes might have class with same name."
		methodsOfCurrentClass := methodsOfCurrentClass associations.
		methodsOfCurrentClass do: [: asso | asso key: association key asString, asso key].
		methodsWithSpelingErrors addAll: methodsOfCurrentClass.
		methodsOfCurrentClass := association value associations.
		methodsOfCurrentClass do: [: asso | asso key: association key asString , asso key].
		allMethodsWithMethodReferences addAll: methodsOfCurrentClass.
	].
	allMethodsWithMethodReferences := allMethodsWithMethodReferences select: [ : association | self AssociationArray: methodsWithSpelingErrors hasKey: association key].
	^ allMethodsWithMethodReferences