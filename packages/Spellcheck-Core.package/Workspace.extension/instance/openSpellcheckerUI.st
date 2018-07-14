*Spellcheck-Core
openSpellcheckerUI

	| correctionUI |
	
	correctionUI := 
		SpellcheckCorrectionUI new;
		open;
		workspace: self;
		yourself