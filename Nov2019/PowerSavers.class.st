Class {
	#name : #PowerSavers,
	#superclass : #PrizePolicy,
	#category : #'Nov2019-Model'
}

{ #category : #operations }
PowerSavers >> applyPrize: anAccount [
	anAccount
		registerCredit: (anAccount creditsForLastMonth - anAccount debitsForLastMoth) * 0.015
		description: 'Prize Policy 3'
]

{ #category : #operations }
PowerSavers >> doesApplyPrize: anAccount [
	^ (anAccount creditsForLast > anAccount debitsForLastMonth) * 2
]
