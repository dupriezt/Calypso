queries
queryInScopeWithout: basisObject

	| newScope |
	newScope := environmentScope withoutBasisObject: basisObject.

	^newScope query: self class