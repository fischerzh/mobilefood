package org.example.demo

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER','ROLE_ADMIN'])
class HomeController {

    def index() { }
	
	@Secured(['ROLE_ADMIN'])
	def adminOnly() { render 'admin '}
}
