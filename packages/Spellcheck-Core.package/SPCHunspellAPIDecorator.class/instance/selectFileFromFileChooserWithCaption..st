dictionaries
selectFileFromFileChooserWithCaption: aString

	| fileChooser |
	
	fileChooser := FileChooser new initializeAsDialogBox.	
	fileChooser createDialogBoxCaptionPane.
	fileChooser setCaption: aString.
	^ fileChooser open.
