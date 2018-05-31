as yet unclassified
testToolOpens	
	
	self assert: ((self subject findByClass: PluggableTextMorphPlus) morphs notEmpty). 
	self assert: ((self subject findByClass: PluggableListMorphPlus) morphs notEmpty). 
	self assert: ((self subject findByClass: PluggableButtonMorphPlus) morphs notEmpty).