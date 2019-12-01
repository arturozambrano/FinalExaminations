Class {
	#name : #PowerBuyers,
	#superclass : #PrizePolicy,
	#category : #'Nov2019-Model'
}

{ #category : #operations }
PowerBuyers >> applyPrize: anAccount [
	IVAReturn new applyTo:anAccount.
]

{ #category : #operations }
PowerBuyers >> doesApplyPrize: anAccount [
  ^anAccount totalBuysForLastMonth >100000
]
