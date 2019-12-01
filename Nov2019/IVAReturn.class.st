Class {
	#name : #IVAReturn,
	#superclass : #Object,
	#category : #'Nov2019-Model'
}

{ #category : #'as yet unclassified' }
IVAReturn >> applyFor: aPurchase in: anAccount [
	anAccount
		registerDeposit: aPurchase amount * 0.21 * 0.10
		description: 'Iva return benefit'
		date: Date today
]
