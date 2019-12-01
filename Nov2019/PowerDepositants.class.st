Class {
	#name : #PowerDepositants,
	#superclass : #PrizePolicy,
	#category : #'Nov2019-Model'
}

{ #category : #operations }
PowerDepositants >> applyPrize: anAccount [
	^ anAccount
		registerDeposit: anAccount depositsInLastMonth * 0.01
		description: 'Prize policy2'
		date: Date today
]

{ #category : #operations }
PowerDepositants >> doesApplyPrize: anAccount [
 ^ anAccount depositsInLastMonth > 100000.

]
