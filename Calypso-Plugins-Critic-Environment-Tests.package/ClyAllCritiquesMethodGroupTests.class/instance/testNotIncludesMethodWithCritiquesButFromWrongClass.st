tests
testNotIncludesMethodWithCritiquesButFromWrongClass

	analyzedClass analyzedClassSideSelectors: #(methodWithHalt).
	self analyzeGroupClasses.
	group classes: {analyzedClass}. "actual class of method is ClyAnalyzedClassStub classSide"
	
	self deny: (group includesMethod: analyzedClass localMethods first)