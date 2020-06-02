Class {
	#name : #SteamIdentifier,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #Steamfrobber
}

{ #category : #'instance creation' }
SteamIdentifier class >> withId: aString [
	^ self basicNew setId: aString
]

{ #category : #comparing }
SteamIdentifier >> = anObject [
	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ id = anObject id
]

{ #category : #testing }
SteamIdentifier >> doesNotStartWithZero [
	^ self id isNotEmpty and: self id first ~= $0
]

{ #category : #comparing }
SteamIdentifier >> hash [

	^ id hash
]

{ #category : #accessing }
SteamIdentifier >> id [
	^ id
]

{ #category : #testing }
SteamIdentifier >> isAllDigits [
^ self id isAllDigits
]

{ #category : #testing }
SteamIdentifier >> isLongEnough [
	^ self id isNotEmpty
]

{ #category : #testing }
SteamIdentifier >> isShortEnough [
	^ self id size <= 7
]

{ #category : #testing }
SteamIdentifier >> isValidType [
	^ self id isString
]

{ #category : #printing }
SteamIdentifier >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ': ';
		print: self id
]

{ #category : #initialization }
SteamIdentifier >> setId: aString [
	id := aString.
]
