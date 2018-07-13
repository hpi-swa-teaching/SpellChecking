as yet unclassified
addWord: aString from: startIndex to: endIndex into: words

	| subWords wholeWord subWord |

	wholeWord := aString copyFrom: startIndex to: endIndex.	
	
	subWords := self parseCamelCaseWord: wholeWord.		
			
	subWords keysAndValuesDo: [ :start :end | 						
		subWord := wholeWord copyFrom: start to: end.			
		(self shouldCheckSpelling: subWord) ifTrue: [
			words at: startIndex + start - 1 put: startIndex + end - 1]]