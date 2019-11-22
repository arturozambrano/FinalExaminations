Class {
	#name : #Customer,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #Nov2019
}

{ #category : #accessing }
Customer >> name [
	^ name
]

{ #category : #accessing }
Customer >> name: anObject [
	name := anObject
]
