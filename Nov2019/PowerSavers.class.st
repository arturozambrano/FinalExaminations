Class {
	#name : #PowerSavers,
	#superclass : #PrizePolicy,
	#category : #'Nov2019-Model'
}

{ #category : #operations }
PowerSavers >> applyPrize: anAccount [
	anAccount
		registerDeposit: (anAccount creditsForLastMonth - anAccount debitsForLastMonth) * 0.015
		description: 'Prize Policy 3'
		date: Date today
]

{ #category : #operations }
PowerSavers >> doesApplyPrize: anAccount [
	^ anAccount creditsForLastMonth > (anAccount debitsForLastMonth * 2)
]
