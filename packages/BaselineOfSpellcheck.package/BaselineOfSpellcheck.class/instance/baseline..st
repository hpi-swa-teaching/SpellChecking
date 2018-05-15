baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					file: 'ConfigurationOfFFI';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					versionString: '1.5' ].
			spec
				package: 'Spellcheck-Core' with: [spec requires: #('FFI')];
				package: 'Spellcheck-Tests' with: [spec requires: #('Spellcheck-Core')];
				yourself.
			spec
				group: 'default' with: #('Spellcheck-Core');
				group: 'tests' with: #('Spellcheck-Tests')];
				yourself