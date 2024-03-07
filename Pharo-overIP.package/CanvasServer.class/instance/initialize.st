initialize
initialize

	super initialize.
	znServer := self newZincServer.
	fingerPrint := UUID new asString.
	self startOn: 1702