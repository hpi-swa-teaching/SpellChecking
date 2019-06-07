library
new: dictionaryPath withAffix: affixPath
	| hunspell |
	hunspell := self basicNew initialize.
	hunspell createHandle: dictionaryPath affix: affixPath.
	^ hunspell