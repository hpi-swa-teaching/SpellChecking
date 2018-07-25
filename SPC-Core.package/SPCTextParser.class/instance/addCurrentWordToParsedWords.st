parsing
addCurrentWordToParsedWords

	| subWords wholeWord subWord |

	wholeWord := self stringToParse copyFrom: self startOfCurrentWord to: self endOfCurrentWord.	
	
	subWords := self parseCamelCaseWord: wholeWord.		
			
	subWords keysAndValuesDo: [ :start :end | 						
		subWord := wholeWord copyFrom: start to: end.			
		(self shouldCheckSpelling: subWord) ifTrue: [
			self parsedWords at: self startOfCurrentWord + start - 1 put: self startOfCurrentWord + end - 1]]