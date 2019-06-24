as yet unclassified
testLevenshteinDistanceManyDifferentChars
	self assert: ((decorator calculateLevenshteinDistance: 'squeak' toString: 'sort')=5)
	