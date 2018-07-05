*Spellcheck-Core
openSpellcheckerUI
	| correctionUI |
	correctionUI := SpellcheckCorrectionUI new. 
	correctionUI open.
	correctionUI input: self.