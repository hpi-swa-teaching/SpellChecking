as yet unclassified
markText

	| font form aString aText |

	pText := PluggableTextMorph new.
	font  :=  (TextFontReference toFont:  (TTCFont familyName: 'BitstreamVeraSans' pointSize: 14 emphasis: 0)).
 	aString := 'Aa Bc Cd Dd Ee Ff'.
 	aText := aString asText addAttribute: font; addAttribute: (TextColor color: Color black).
 	pText editString: aText.	
	
	form := Form extent: 100@100 depth: 32.
	form getCanvas line: 0@20 to: 100@20 width: 3 color: Color red.	
	(pText addMorph: form asMorph) openInHand.
	