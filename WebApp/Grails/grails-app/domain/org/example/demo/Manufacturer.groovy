package org.example.demo

class Manufacturer {
	
	String name
	String beschreibung
    static hasOne = [verkaufsort: Verkaufsort]
	
    static constraints = {
		verkaufsort nullable:true
    }
	
	String toString() {return name}
}
