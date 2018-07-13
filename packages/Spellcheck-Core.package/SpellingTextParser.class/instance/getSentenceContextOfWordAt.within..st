as yet unclassified
getSentenceContextOfWordAt: startIndex within: aText

	| sentenceStart sentenceEnd |
		
	sentenceEnd := self getEndOfSentenceContextOfWordAt: startIndex within: aText.
	sentenceStart := self getStartOfSentenceContextOfWordAt: startIndex within: aText.

	^ aText copyFrom: sentenceStart to: sentenceEnd