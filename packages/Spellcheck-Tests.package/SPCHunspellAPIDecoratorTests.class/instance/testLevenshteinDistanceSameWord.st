as yet unclassified
testLevenshteinDistanceSameWord
	self assert: ((decorator calculateLevenshteinDistance: 'squeak' toString: 'squeak')=0)
	