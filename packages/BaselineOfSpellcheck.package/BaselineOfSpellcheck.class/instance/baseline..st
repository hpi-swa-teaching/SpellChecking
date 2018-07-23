baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'Project12' with: [
				spec
					repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages'. ].
			spec project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					file: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					versionString: '1.5' ].
			spec
				package: 'Spellcheck-Core' with: [spec requires: #('FFI')];
				package: 'Spellcheck-Tests' with: [spec requires: #('Spellcheck-Core' 'Project12')];
				yourself.
			spec
				group: 'default' with: #('Spellcheck-Core');
				group: 'tests' with: #('Spellcheck-Tests')];
				yourself