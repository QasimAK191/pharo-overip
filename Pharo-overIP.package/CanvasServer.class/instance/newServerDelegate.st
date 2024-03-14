instance creation
newServerDelegate

	| newDelegate |
	newDelegate := self serverDelegateClass empty.
	newDelegate map: '/' to: 'index.html'.
	newDelegate
		map: 'index.html'
		to: [ :request | ZnResponse ok: (ZnEntity html: self html) ].
	newDelegate
		map: 'index.js'
		to: [ :request |
		ZnResponse ok: (ZnEntity javascript: self javascript) ].
	newDelegate
		map: 'index.css'
		to: [ :request | ZnResponse ok: (ZnEntity css: self css) ].
	newDelegate map: 'favicon.ico' to: [ :request |
		self favicon
			ifNil: [ ZnResponse notFound: request uri ]
			ifNotNil: [ ZnResponse ok: (ZnEntity favicon: self favicon) ] ].
	newDelegate
		map: 'serverFingerPrint'
		to: [ :request | ZnResponse ok: (ZnEntity text: self fingerPrint) ].
	"newDelegate
		map: self webSocketUrlTag
		to: (ZnWebSocketDelegate map: self webSocketUrlTag to: self)."
	^ newDelegate