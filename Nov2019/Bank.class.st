Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'accounts'
	],
	#category : #Nov2019
}

{ #category : #actions }
Bank >> computePrizes [
	| customersPerPolicy |
	customersPerPolicy := Dictionary new.
	accounts
		do: [ :account | 
			| policy |
			policy := self prizePolicies
				detect: [ :p | p applyTo: account ]
				ifNone: [ nil ].
			policy
				ifNotNil: [ :p | 
					(customersPerPolicy at: p ifAbsentPut: OrderedCollection new)
						add: account customer ] ].
	self report: customersPerPolicy
]

{ #category : #actions }
Bank >> prizePolicies [
	^ {PowerBuyers new.
	PowerDepositants new.
	PowerSavers new}
]

{ #category : #actions }
Bank >> report: aDictionary [
	aDictionary
		keysAndValuesDo: [ :policy :customers | 
			Transcript
				show: policy class name;
				cr.
			(customers asSortedCollection: [ :a :b | a name < b name ])
				do: [ :customer | 
					Transcript
						show: customer name;
						cr ] ]
]
