Class {
	#name : #BankTest,
	#superclass : #TestCase,
	#instVars : [
		'account1',
		'bank'
	],
	#category : #'Nov2019-Tests-Model'
}

{ #category : #test }
BankTest >> setUp [
	bank := Bank new.
	account1 := SavingAccount
		forCustomer: (Customer named: 'Jonnhy Walker').
	bank addAccount: account1
]

{ #category : #test }
BankTest >> testComputePrizesPowerBuyer [
	account1
		registerPurchase: 1000001
		description: 'test'
		date: Date today - 2 days.
	bank computePrizes.
	account1 registerPurchase: 100 description: 'test' date: Date today.
	self assert: account1 lastDebit amount equals: 100.
	self assert: account1 lastCredit amount equals: 2.1
]

{ #category : #test }
BankTest >> testComputePrizesPowerDepositants [
	account1
		registerDeposit: 200000
		description: 'test'
		date: Date today - 2 days.
	bank computePrizes.
	self assert: account1 lastCredit amount equals: 2000
]

{ #category : #test }
BankTest >> testComputePrizesPowerSaver [
	account1
		registerDeposit: 1000
		description: 'test'
		date: Date today - 3 days.
	account1
		registerPurchase: 100
		description: 'purchase'
		date: Date today - 2 days.
	bank computePrizes.
	self assert: account1 lastCredit amount equals: 900 * 0.015
]
