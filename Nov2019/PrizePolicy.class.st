Class {
	#name : #PrizePolicy,
	#superclass : #Object,
	#category : #Nov2019
}

{ #category : #operations }
PrizePolicy >> applyPrize: anAccount [
	self subclassResponsibility
]

{ #category : #operations }
PrizePolicy >> applyTo: anAccount [
	^ (self doesApplyPrize: anAccount)
		ifTrue: [ self applyPrize: anAccount.
			true ]
		ifFalse: [ false ]
]

{ #category : #operations }
PrizePolicy >> doesApplyPrize: anAccount [
  self subclassResponsibility 
]
