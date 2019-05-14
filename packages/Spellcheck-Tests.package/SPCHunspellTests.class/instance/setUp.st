initialize-release
setUp
	super setUp.
	hunspell := SPCHunspellAPI new.
	wrongWord := 'squeack'.
	correctWord := 'squeak'.
	germanWord := 'Klabautermann'