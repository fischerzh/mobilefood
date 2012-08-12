package org.example.demo

class Verkaufsort {
	
	String ort
	String plz

	static hasMany = [manufacturers: Manufacturer]
	
    static constraints = {
    }
}
