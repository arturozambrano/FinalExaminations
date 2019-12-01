Class {
	#name : #SavingAccount,
	#superclass : #Object,
	#instVars : [
		'customer',
		'debits',
		'credits'
	],
	#category : #'Nov2019-Model'
}

{ #category : #acccessing }
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

{ #category : #acccessing }
SavingAccount >> deditsForLastMonth [
	^ self sumForLastMonth: debits.
]

{ #category : #actions }
SavingAccount >> registerCredit: amount descripton: aString [
]

{ #category : #actions }
SavingAccount >> registerDebit: amount descripton: aString [
]

{ #category : #private }
SavingAccount >> sumForLastMonth:aCollection [
	^ ((aCollection
		select: [ :c | c date between: Date today - 1 month and: Date today ])
		collect: #amount) sum
]
