as yet unclassified
setUp
	pluggableTextMorphPlus := PluggableTextMorphPlus new.
	pluggableTextMorphPlus textMorph contents: 'This is a tset.'.
	pluggableTextMorphPlus styler: SpellingTextStyler new.
	pluggableTextMorphPlus textMorph editor selectFrom:11 to: 14.