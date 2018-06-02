as yet unclassified
addParsedWord: aString from: startIndex to: endIndex into: words

	| camelCaseWords word cc_word |

	word := aString copyFrom: startIndex to: endIndex.	
	
	camelCaseWords := Dictionary new.
	camelCaseWords := self parseCamelCaseText: word.		
	camelCaseWords keysAndValuesDo: [ :start :end | 			
					
		cc_word := word copyFrom: start to: end.			
		(self shouldCheckSpelling: cc_word) ifTrue: [
		words at: (startIndex + start - 1) put: (startIndex + end - 1).].
	].
		
	^ words 