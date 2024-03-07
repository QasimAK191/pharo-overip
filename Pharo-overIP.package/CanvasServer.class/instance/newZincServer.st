instance creation
newZincServer

	| srv |
	srv := ZnMultiThreadedServer new.
	srv delegate: self newServerDelegate.
	^ srv