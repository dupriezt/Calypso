tests-methods definition filter
testMethodDefinitionFilterBySelectorSubstring

	| scope allMethods filteredMethods items |
	scope := environment selectScope: ClyLocalClassScope of: {self class}.
	allMethods := scope query: ClySortedMethods.
	filteredMethods := allMethods filterItemsBy: (ClyMethodDefinitionFilter pattern: testSelector).
	
	items := filteredMethods retrieveAll.
	
	self assert: items size equals: 1.
	self assert: items first actualObject equals: thisContext method