import org.example.demo.*

class BootStrap {

    def init = { servletContext ->
		
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		
		def user1 = User.findByUsername('marco') ?: new User(username: 'marco', enabled:true, password: 'pass', firstName: 'Marco', lastName: 'Fischer').save(failOnError: true)
		def user2 = User.findByUsername('admin') ?: new User(username: 'admin', enabled:true, password: 'pass', firstName: 'Admin', lastName: 'Admin').save(failOnError: true)
		
		def verwalter1 = Verwalter.findByName('Ariel') ?: new Verwalter(name: 'Ariel').save(failOnError: true)

		def product1 = Product.findByName('Banane') ?: new Product(name: 'Banane', description: '', content: 'Bananenfutter', verwalter: [verwalter1]).save(failOnError: true)
		
		if (!user1.authorities.contains(userRole)) {
			UserRole.create user1, userRole, true
		}
		
		if (!user2.authorities.contains(adminRole)) {
			UserRole.create user2, adminRole, true
		}
		
		assert User.count == 2
		assert Role.count == 2
		
    		
	}
    def destroy = { }
}
