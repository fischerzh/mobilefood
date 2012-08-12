package org.example.demo

class Manufacturer {
	
	String name
	static hasMany = [products: Product]
	static hasOne = [verkaufsort: Verkaufsort]
	
    static constraints = {
    }
}
