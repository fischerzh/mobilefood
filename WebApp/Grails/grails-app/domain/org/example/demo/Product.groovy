package org.example.demo

class Product {
	
	static hasMany = [verwalters: Verwalter]
		
	String name
	String description
	String content

    static constraints = {
    }
}
