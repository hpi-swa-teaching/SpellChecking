testing
testToolOpens	
	
	self assert: ((self subject findByClass: PluggableTextMorphPlus) morphs notEmpty). 
	self assert: ((self subject findByClass: PluggableListMorphByItemPlus) morphs notEmpty). 
	self assert: ((self subject findByClass: PluggableButtonMorphPlus) morphs notEmpty)