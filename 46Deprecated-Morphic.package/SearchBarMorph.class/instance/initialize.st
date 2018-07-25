initialize
initialize

	super initialize.
	text := Text new.
	backgroundColor := TranslucentColor gray alpha: 0.3.
	self width: 200.
	self crAction: (MessageSend receiver: self selector: #smartSearch:).
	self setBalloonText: 'Searches for globals and methods'.