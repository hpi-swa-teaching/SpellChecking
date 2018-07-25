testing
testGetSentenceContext

	| sentence text |
	
	text := 'Hello this. Is a sentence, and then another half sentence.o'.
	
	sentence := parser getSentenceContextOfWordAt: 18 within: text. 		
	self assert: sentence = 'Is a sentence,'.
	
	sentence := parser getSentenceContextOfWordAt: 1 within: text. 
	self assert: sentence = 'Hello this.'.
	
	sentence := parser getSentenceContextOfWordAt: 28 within: text. 
	self assert: sentence = 'and then another half sentence.'.
	
	sentence := parser getSentenceContextOfWordAt: text size within: text.
	self assert: sentence = 'o'