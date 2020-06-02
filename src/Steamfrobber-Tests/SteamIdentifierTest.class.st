Class {
	#name : #SteamIdentifierTest,
	#superclass : #TestCase,
	#category : #'Steamfrobber-Tests'
}

{ #category : #tests }
SteamIdentifierTest >> testDoesNotStartWithZero [
	| ident |
	ident := SteamIdentifier withId: '01234'.
	self assert: ident doesNotStartWithZero equals: false
]

{ #category : #tests }
SteamIdentifierTest >> testIsAllDigits [
	| ident1 ident2 ident3 |
	ident1 := SteamIdentifier withId: 'a1234'.
	ident2 := SteamIdentifier withId: '12b34'.
	ident3 := SteamIdentifier withId: '1234c'.
	self assert: ident1 isAllDigits equals: false.
	self assert: ident2 isAllDigits equals: false.
	self assert: ident3 isAllDigits equals: false
]

{ #category : #tests }
SteamIdentifierTest >> testIsValidType [
	| ident1 ident2 ident3 |
	ident1 := SteamIdentifier withId: 1234.
	ident2 := SteamIdentifier withId: $x.
	ident3 := SteamIdentifier withId: #('1234').
	self assert: ident1 isValidType equals: false.
	self assert: ident2 isValidType equals: false.
	self assert: ident3 isValidType equals: false
]

{ #category : #tests }
SteamIdentifierTest >> testisLongEnough [
	| ident1 ident2 |
	ident1 := SteamIdentifier withId: ''.
	ident2 := SteamIdentifier withId: '1'.
	self assert: ident1 isLongEnough equals: false.
	self assert: ident2 isLongEnough equals: true
]

{ #category : #tests }
SteamIdentifierTest >> testisShortEnough [
	| ident1 ident2 |
	ident1 := SteamIdentifier withId: '12345678'.
	ident2 := SteamIdentifier withId: '1234567'.
	self assert: ident1 isShortEnough equals: false.
	self assert: ident2 isShortEnough equals: true
]
