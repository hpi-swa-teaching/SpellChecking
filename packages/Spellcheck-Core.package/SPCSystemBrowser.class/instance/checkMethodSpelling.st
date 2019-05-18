spellchecking
checkMethodSpelling
	| aClass methods |
	aClass := self selectedClassOrMetaClass.
	aClass isNil ifTrue: [
		^ 0	
	].
	methods := aClass methodDict.
	methods := self getMethodSourceCodeFor: methods fromClass: aClass.
	methods := self findMessagesWithSpellingErrors: methods.
	self informAboutErrors ifTrue: [
		methods isEmpty ifTrue: [self inform: aClass name, ' has no methods with spelling errors.'. ^ self].
	].
	"TODO: Create UI."
	self informAboutErrors ifTrue: [
		methods isEmpty ifFalse:  [self inform: aClass name, ' has ', methods size, ' methods with spelling errors.'. ^ self]
	].
	^ methods size