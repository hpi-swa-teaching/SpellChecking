as yet unclassified
isCamelCase: aString

	| count | 
	count := 0.
	aString do: [ :c | (c isUppercase) ifTrue: [count := count + 1]].
	^ (count >= 1)