default actions
traceCr: aString

	Smalltalk logStdOutDuring: [:logger |
		logger nextPutAll: aString;
				 cr ]