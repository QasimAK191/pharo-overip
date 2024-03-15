error handling
handleError: anError log: shouldLog

	self traceCr: '*** EXCEPTION ***'.
	self traceCr: anError.
	self trace: (String streamContents: [ :stream |
			 anError signalerContext errorReportOn: stream ]).
	Smalltalk exitFailure