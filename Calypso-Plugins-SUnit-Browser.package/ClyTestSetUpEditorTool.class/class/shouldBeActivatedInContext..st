testing
shouldBeActivatedInContext: aBrowserContext
	aBrowserContext isClassSelected ifFalse: [ ^false ].
	(aBrowserContext lastSelectedItem hasProperty: ClyTestResultProperty) ifFalse: [ ^false ].
	
	"last condition is to not show this tool if user selects #setUp method manually"
	aBrowserContext isMethodSelected ifFalse: [ ^true ].	
	^aBrowserContext browser selectedMethods lastSelectedItem name ~= 'setUp'