Class {
	#name : #AccountMovement,
	#superclass : #Object,
	#instVars : [
		'amount',
		'date',
		'description'
	],
	#category : #'Nov2019-Model'
}

{ #category : #'instance creation' }
AccountMovement class >> newAmount: amount description: aString date: aDate [
	^ self new
		amount: amount;
		description: aString;
		date: aDate;
		yourself
]

{ #category : #accessing }
AccountMovement >> amount [
	^ amount
]

{ #category : #accessing }
AccountMovement >> amount: anObject [
	amount := anObject
]

{ #category : #accessing }
AccountMovement >> date [
	^ date
]

{ #category : #accessing }
AccountMovement >> date: anObject [
	date := anObject
]

{ #category : #accessing }
AccountMovement >> description [
	^ description
]

{ #category : #accessing }
AccountMovement >> description: anObject [
	description := anObject
]
