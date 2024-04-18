initialize
initialize

	port := 1701.
	super initialize.
	znServer := self newZincServer.
	fingerPrint := UUID new asString.
	znServer startOn: port.
	Transcript show: 'Socket session running on port: ', port asString, String cr.
	znServer logToTranscript.
	
	