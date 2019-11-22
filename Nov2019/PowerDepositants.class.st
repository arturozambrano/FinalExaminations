Class {
	#name : #PowerDepositants,
	#superclass : #PrizePolicy,
	#category : #Nov2019
}

{ #category : #operations }
PowerDepositants >> applyPrize: anAccount [
	^ anAccount
		registerCredit: anAccount depositsInLastMonth * 0.01
		description: 'Prize policy2'
]

{ #category : #operations }
PowerDepositants >> doesApplyPrize: anAccount [
 ^ anAccount depositsInLastMonth > 100000.

]
