Class {
	#name : #PowerBuyers,
	#superclass : #PrizePolicy,
	#category : #'Nov2019-Model'
}

{ #category : #operations }
PowerBuyers >> applyPrize: anAccount [
	anAccount addBenefit: IVAReturn new
]

{ #category : #operations }
PowerBuyers >> doesApplyPrize: anAccount [
  ^anAccount totalBuysForLastMonth >100000
]
