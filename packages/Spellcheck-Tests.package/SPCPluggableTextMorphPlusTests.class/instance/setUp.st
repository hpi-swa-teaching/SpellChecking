initialize-release
setUp
	super setUp.
	pluggableTextMorphPlus := PluggableTextMorphPlus new.
	pluggableTextMorphPlus setText: 'This is a tset.'.
	pluggableTextMorphPlus styler: SPCTextStyler new.
	pluggableTextMorphPlus textMorph editor selectFrom: 11 to: 14