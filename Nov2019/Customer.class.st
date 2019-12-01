Class {
	#name : #Customer,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'Nov2019-Model'
}

{ #category : #'instance creation' }
Customer class >> named: aString [
	^ self new
		name: aString;
		yourself
]

{ #category : #accessing }
Customer >> name [
	^ name
]

{ #category : #accessing }
Customer >> name: anObject [
	name := anObject
]
