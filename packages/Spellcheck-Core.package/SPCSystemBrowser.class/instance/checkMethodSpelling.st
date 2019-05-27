spellchecking
checkMethodSpelling

	| aClass methods |
	aClass := self selectedClassOrMetaClass.
	aClass isNil ifTrue: [
		^ self	
	].
	
	methods := aClass methodDict.
	methods := self getMethodSourceCodeFor: methods fromClass: aClass.
	methods := self findMessagesWithSpellingErrors: methods.
	self informAboutErrors ifTrue: [
		methods isEmpty ifTrue: [self inform: aClass name, ' has no methods with spelling errors.'. ^ self].
	].
	
	methods := aClass methodDict keysDo: [ :aKey | methods includesKey: aKey ].
	
	self informAboutErrors ifTrue: [
		methods isEmpty ifFalse:  [ SPCMethodTextViewer openWith: methods ]
	].