initialize
initialize

	| port1 port2 |
	port1 := 1702.
	port2 := 1701.
	super initialize.
	znServer := self newZincServer.
	fingerPrint := UUID new asString.
	self startOn: port1.
	Transcript show: 'Server running on port: ', port1 asString.
	socket := CanvasSocket new.
	socket startServerOn: port2.
	znServer serveConnectionsOn: socket.
	ZnWebSocketEchoHandler value: socket new.
	