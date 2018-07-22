# Spellcheck [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-14.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-14)

[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-14/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-14?branch=master)

 
 ## Introduction
This project was part of SWT SoSe 2018
 
 ## Features
 - Spellchecking inside TextMorphs (for example the workspace)
 - SpellCheckUI
 - UI for organizing the words you added to your dictionary or change the language
 - Supported for Windows, Linux and Mac

## Usage
#### Activate the feature in the preferences:
- Enable 'SpellChecking in TextMorphs' and 'syntaxHighlightingAsYouType'

#### Usage in a TextMorph
- wrong words are highlighted in yellow color
- selecting and rightclicking on a wrong word lets you correct the word or add it to the dictionary
- ##### in Worspace only: 
   - save the content of the workspace (ctrl s) and click on the blue arrow in the top right corner. Then click on 'Open SpellChecker'
   - ignored words are only ignored for the duration of this session 
   - words that are added to the dictionary survive a restart
   
#### OrganizeUI
- go to 'Apps' -> 'Dictionary Setting' to change the language or organize added words

#### How to add more languages?
- Languages are stored in the 'dictionaries'-folder in 'Ressources'
- To add a language, simply create a new subfolder and insert the .dic and .aff file you downloaded from the web
- The name of the subfolder will be the name of the language
- The name of the .dic and .aff files do not matter



## History

2018: Ivan Ilic, Youri Kaminsky, Robert Schwanhold, Ole Wegen, Paul Zimmermann

