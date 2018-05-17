as yet unclassified
markAllText
 	|text|
	
	text := self getText.
	text addAttribute: TextColor red.
	text addAttribute: TextEmphasis underlined.
	self setText: text. 