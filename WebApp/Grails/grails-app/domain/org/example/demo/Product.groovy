package org.example.demo

class Product {
	
	String name
	String description
	String content
	String articleStatus //Koscher
	Boolean bischulak
	Boolean liothissur
	Boolean chalavaka
	Boolean exportSelection
	Boolean israelProduct
	Boolean parve
	Boolean smile
	Boolean tarovetissur
	Boolean tolaim
	Date entryDate
	Date publishDate
	Date lastControl
	Date lastChanged
	Date nextControl
	Number weight
	Number EAN
	

	static hasMany = [verwalters: Verwalter]
	static belongsTo = [manufacturer: Manufacturer, packaging: Packaging, distributor: Distributor, 
		ingredient: Ingredient, controlling: Controlling, productFamily: ProductFamily]
	
    static constraints = {
		name blank:false, unique:true
		description nullable:true, maxSize: 1000
		content blank:false, maxSize: 1000
    }
}
