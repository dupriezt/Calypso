accessing
methods
	
	| classPackage |
	^classes flatCollect: [ :eachClass | 
		classPackage := eachClass package.
		eachClass localMethods reject: [ :each | each isDefinedInPackage: classPackage ]]