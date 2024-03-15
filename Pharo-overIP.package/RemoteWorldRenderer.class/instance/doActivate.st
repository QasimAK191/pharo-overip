private
doActivate

	localRenderer := World worldState worldRenderer.
	stuffISent := OrderedCollection new.
	World worldState worldRenderer: self