package org.example.demo

import org.springframework.dao.DataIntegrityViolationException

class VerwalterController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']

    def index() {
        redirect action: 'list', params: params
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [verwalterInstanceList: Verwalter.list(params), verwalterInstanceTotal: Verwalter.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[verwalterInstance: new Verwalter(params)]
			break
		case 'POST':
	        def verwalterInstance = new Verwalter(params)
	        if (!verwalterInstance.save(flush: true)) {
	            render view: 'create', model: [verwalterInstance: verwalterInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), verwalterInstance.id])
	        redirect action: 'show', id: verwalterInstance.id
			break
		}
    }

    def show() {
        def verwalterInstance = Verwalter.get(params.id)
        if (!verwalterInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), params.id])
            redirect action: 'list'
            return
        }

        [verwalterInstance: verwalterInstance]
    }

    def edit() {
		switch (request.method) {
		case 'GET':
	        def verwalterInstance = Verwalter.get(params.id)
	        if (!verwalterInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [verwalterInstance: verwalterInstance]
			break
		case 'POST':
	        def verwalterInstance = Verwalter.get(params.id)
	        if (!verwalterInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (verwalterInstance.version > version) {
	                verwalterInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'verwalter.label', default: 'Verwalter')] as Object[],
	                          "Another user has updated this Verwalter while you were editing")
	                render view: 'edit', model: [verwalterInstance: verwalterInstance]
	                return
	            }
	        }

	        verwalterInstance.properties = params

	        if (!verwalterInstance.save(flush: true)) {
	            render view: 'edit', model: [verwalterInstance: verwalterInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), verwalterInstance.id])
	        redirect action: 'show', id: verwalterInstance.id
			break
		}
    }

    def delete() {
        def verwalterInstance = Verwalter.get(params.id)
        if (!verwalterInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), params.id])
            redirect action: 'list'
            return
        }

        try {
            verwalterInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'verwalter.label', default: 'Verwalter'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
