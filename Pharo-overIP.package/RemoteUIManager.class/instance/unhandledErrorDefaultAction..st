default actions
unhandledErrorDefaultAction: anException
	self traceCr: '*** EXCEPTION ***'.
	self traceCr: anException.
	self
		trace:
			(String
				streamContents: [ :stream | anException signalerContext errorReportOn: stream ]).
	Smalltalk exitFailure