as yet unclassified
testLevenshteinDistanceOneDifferentChar
	self assert: ((decorator calculateLevenshteinDistance: 'squeak' toString: 'squeack')=1)
	