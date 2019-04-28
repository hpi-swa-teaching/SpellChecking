# Spellcheck [![Build Status](https://travis-ci.org/hpi-swa-teaching/SpellChecking.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SpellChecking) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SpellChecking/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SpellChecking?branch=master)

## Features
 - Spellchecking inside TextMorphs (for example the workspace)
 - User Interface for checking all mistakes in a text, comparable to other spellchecking tools
 - User Interface for organizing the words you added to your dictionary or change the language
 - Choose between multiple languages, new language-dictionaries can be added too
 - Supported for Windows, Linux and Mac
## Installation

Start Squeak, and run the following code in a workspace:
```Smalltalk
Metacello new   
    baseline: 'Spellcheck';  
    repository: 'github://hpi-swa-teaching/SpellChecking:libraries-install-squeak/packages';  
    load: 'tests'.
```    

### Installing additional Examples for the Foreign Function Interface

A note to future maintainers of this project: If you have any trouble with the FFI and want to see some working examples, install the following packages:

```Smalltalk
(Installer repository: 'http://source.squeak.org/FFI')   
install: 'FFI-Pools';   
install: 'FFI-Kernel';   
install: 'FFI-Tests';      
install: 'FFI-Examples'.
```

## Usage

### Activate the feature in the preferences:
1. Go to ```tools``` -> ```preferences``` to open the preference browser
2. Look for the category 'Spellchecking'
3. Enable ```SpellChecking in TextMorphs```. you may also leave ```syntaxHighlightingAsYouType``` activated if you wish to
4. Start typing!

### Usage in a TextMorphs
- Seemingly misspelled words are highlighted and underlined in orange color
- selecting and right-clicking on a wrong word let's you correct the word or add it to the dictionary
- ##### in Worspace only:
   - save the content of the workspace (ctrl+s) and click on the blue arrow in the top right corner. Then click ```Open SpellChecker```
   - ignored words are only ignored for the duration of this session
   - words that are added to the dictionary survive a restart

### Dictionary Management
- Go to ```Apps``` -> ```Dictionary Setting``` to change the language or organize added words
- On the left side you see the words that you added to your dictionary, you may select a word there and remove it with the 'remove word'-button below
- On the right side you see an overview over your available dictionaries, choose another one and start typing to see changes

### How to add more languages?
- All available Languages are stored in the 'dictionaries'-folder in 'Ressources'
- To add a language, simply create a new subfolder and insert the .dic and .aff file; no worries - those are available for free from the web
- The name of the subfolder will be the name of the language on
- The name of the .dic and .aff files do not matter

## History
This project was initially created as part of SWT SoSe 2018.

2018: Ivan Ilic, Youri Kaminsky, Robert Schwanhold, Ole Wegen, Paul Zimmermann
