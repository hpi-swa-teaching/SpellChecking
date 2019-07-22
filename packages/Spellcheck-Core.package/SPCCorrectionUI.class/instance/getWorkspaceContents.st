accessing
getWorkspaceContents

	self workspace dependents 
	ifEmpty:[
		^ self workspace contents
	]
	ifNotEmpty: [
	^ ((self workspace dependents at: 1) paneMorphs at: 1) textMorph contents asString
	]