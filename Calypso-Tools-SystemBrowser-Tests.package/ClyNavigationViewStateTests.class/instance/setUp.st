running
setUp
	| cursor package |
	super setUp.
	package := ClyClass7WithTag1FromP5 package.  "it is P5WithTag package which allow items expansion"
	cursor := environment query: ClySortedPackages inScope: (ClyPackageScope basis: { package }).
	viewDataSource := ClyCollapsedDataSource on: cursor.
	viewDataSource childrenStructure: { ClyPackageScope -> ClySortedClassGroups }.
	navigationView := ClyNavigationView for: browser.
	navigationView dataSource: viewDataSource.
	navigationView selection selectItems: { self selectedItem }