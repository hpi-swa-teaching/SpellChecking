library
new: dictionaryPath withAffix: affixPath

	| hunspell |
	hunspell := self empty.
	hunspell createHandle: dictionaryPath affix: affixPath.
	^ hunspell