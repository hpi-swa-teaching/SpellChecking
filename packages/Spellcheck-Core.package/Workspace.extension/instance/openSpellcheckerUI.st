*Spellcheck-Core
openSpellcheckerUI
	| spellchecker |
	spellchecker := SpellcheckCorrectionUI new. 
	spellchecker open.
	spellchecker input: self.