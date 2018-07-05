initialize-release
setUp

	pluggableTextMorphPlus := PluggableTextMorphPlus new.
	pluggableTextMorphPlus setText: 'This is a tset.'.
	pluggableTextMorphPlus styler: SpellingTextStyler new.
	pluggableTextMorphPlus textMorph editor selectFrom: 11 to: 14