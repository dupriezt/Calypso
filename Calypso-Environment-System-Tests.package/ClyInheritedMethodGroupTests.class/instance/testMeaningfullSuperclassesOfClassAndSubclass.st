tests
testMeaningfullSuperclassesOfClassAndSubclass

	| actual |
	group classes: { ClyClass1FromP1. ClySubclassN1OfClass1FromP1}.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ClyClass1FromP1 }