as yet unclassified
classListMenu: aMenu 
	"Conveniently fit for backward compatibility with old browers stored in image segments"
	super classListMenu: aMenu.
	aMenu addList: #(
		-
		('check spelling'				checkMethodSpelling)).
	^ aMenu