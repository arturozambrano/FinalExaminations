Class {
	#name : #PowerBuyers,
	#superclass : #PrizePolicy,
	#category : #Nov2019
}

{ #category : #operations }
PowerBuyers >> applyPrize: anAccount [
	anAccount prize: IVAReturn new
]

{ #category : #operations }
PowerBuyers >> doesApplyPrize: anAccount [
  ^anAccount totalBuysForLastMonth >100000
]
