initialize-release
setUp
	super setUp.
	hunspell := SPCHunspellAPI instance.
	wrongWord := 'squeack'.
	correctWord := 'squeak'.
	germanWord := 'Klabautermann'