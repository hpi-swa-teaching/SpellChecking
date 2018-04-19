baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'Spellcheck-Core';
				package: 'Spellcheck-Tests' with: [spec requires: #('Spellcheck-Core')];
				yourself.
			spec
				group: 'default' with: #('Spellcheck-Core');
				group: 'tests' with: #('Spellcheck-Tests')];
				yourself