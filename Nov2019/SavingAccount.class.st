Class {
	#name : #SavingAccount,
	#superclass : #Object,
	#instVars : [
		'customer',
		'debits',
		'credits',
		'benefits'
	],
	#category : #'Nov2019-Model'
}

{ #category : #'as yet unclassified' }
SavingAccount class >> forCustomer: aCustomer [
	^ self new
		customer: aCustomer;
		yourself
]

{ #category : #operations }
SavingAccount >> addBenefit: aBenefit [
	benefits add: aBenefit
]

{ #category : #accessing }
SavingAccount >> creditsForLastMonth [
	^ self sumForLastMonth: credits.
]

{ #category : #accessing }
SavingAccount >> customer [
	^ customer
]

{ #category : #accessing }
SavingAccount >> customer: anObject [
	customer := anObject
]

{ #category : #accessing }
SavingAccount >> debitsForLastMonth [
	^ self sumForLastMonth: debits.
]

{ #category : #queries }
SavingAccount >> depositsInLastMonth [
	^ self sumForLastMonth: (credits select: [ :d | d isDeposit ])
]

{ #category : #initialization }
SavingAccount >> initialize [
	benefits := OrderedCollection new.
	debits := OrderedCollection new.
	credits := OrderedCollection new
]

{ #category : #accessing }
SavingAccount >> lastCredit [
	^ credits last
]

{ #category : #accessing }
SavingAccount >> lastDebit [
	^ debits last
]

{ #category : #actions }
SavingAccount >> registerDeposit: amount description: aString date: aDate [
	credits
		add: (Deposit newAmount: amount description: aString date: aDate)
]

{ #category : #actions }
SavingAccount >> registerPurchase: amount description: aString date: aDate [
	| purchase |
	purchase := Purchase
		newAmount: amount
		description: aString
		date: aDate.
	debits add: purchase.
	benefits do: [ :b | b applyFor: purchase in: self ]
]

{ #category : #private }
SavingAccount >> sumForLastMonth: aCollection [
	aCollection ifEmpty: [ ^ 0 ].
	^ (aCollection
		select: [ :c | c date between: Date today - 30 days and: Date today ])
		sum: [ :m | m amount ]
]

{ #category : #queries }
SavingAccount >> totalBuysForLastMonth [
	^ self sumForLastMonth: (debits select: [ :d | d isPurchase ])
]
