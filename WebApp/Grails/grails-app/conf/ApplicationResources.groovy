modules = {
    application {
		dependsOn 'jquery'
        resource url:'js/application.js'
		resource url:'css/main.css'
		resource url:'css/mobile.css'
		resource url:'css/scaffolding.css'
		
    }
	
	login {
		resource url:'css/login.css'
	}
}