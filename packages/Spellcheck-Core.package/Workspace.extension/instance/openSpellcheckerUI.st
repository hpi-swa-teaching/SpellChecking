*Spellcheck-Core
openSpellcheckerUI

	| correctionUI |
	
	correctionUI := 
		SPCCorrectionUI new open;
		workspace: self;
		yourself