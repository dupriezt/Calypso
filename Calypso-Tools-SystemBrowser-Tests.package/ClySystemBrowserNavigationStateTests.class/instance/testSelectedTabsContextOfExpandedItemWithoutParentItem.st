tests
testSelectedTabsContextOfExpandedItemWithoutParentItem

	| tab contextItem packageItem |
	packageItem := browser packageView dataSource 
		findItemsWith: { ClyClass7WithTag1FromP5 package}. "P5WithTags package which can be expanded".
	packageItem first expand.
	browser packageView selection 
		selectItems: {packageItem first childrenDataSource elementAt: 1}. "some class group"
	self snapshotNavigationState.
	
	tab := navigationState selectedTabs first.
	contextItem := tab context selectedItems first.
	self assert: contextItem ownerDataSource parentItem isNil