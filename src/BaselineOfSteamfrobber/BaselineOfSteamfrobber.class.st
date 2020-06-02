Class {
	#name : #BaselineOfSteamfrobber,
	#superclass : #BaselineOf,
	#category : #BaselineOfSteamfrobber
}

{ #category : #baselines }
BaselineOfSteamfrobber >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Packages"
			spec
				package: 'Steamfrobber';
				package: 'Steamfrobber-Tests'
					with: [ spec requires: #('Steamfrobber') ] ]
]
