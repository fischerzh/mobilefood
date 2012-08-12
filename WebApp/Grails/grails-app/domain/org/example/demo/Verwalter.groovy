package org.example.demo

class Verwalter {

	String name
	
	static hasMany = [products: Product]
	static belongsTo = Product
	
    static constraints = {
		name blank:false, unique:true
    }
	
	String toString() {return name}
	
}
