as yet unclassified
isSeparator: aCharacter

	^ (aCharacter isSeparator) or: (#($( $) $[ $] ${ $} $< $> $. $: $, $; $? $! $_ $-) includes: aCharacter)