testing
getColorFromRunArray: aRunArray
	"As of now, you can not decide between Text Attributes like bold and TextColors in an easier way."
	aRunArray do: [ :textAttribute |
		(textAttribute class canUnderstand: #color) ifTrue: [
			^ textAttribute color
		]
	].
	^ nil