accessing
getWorkspaceContents

	^ ((self workspace dependents at: 1) paneMorphs at: 1) textMorph contents asString