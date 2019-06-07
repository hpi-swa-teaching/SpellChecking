registering
unregisterInWorldMenu

	(TheWorldMenu respondsTo: #unregisterOpenCommand:)
		ifTrue: [TheWorldMenu unregisterOpenCommand: 'Spellchecking']