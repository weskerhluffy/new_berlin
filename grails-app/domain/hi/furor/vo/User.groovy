package hi.furor.vo

import grails.rest.*

@Resource(uri='/cacas')
class User {


	String username
	//	String password
	String email
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	List<Role> authorities

	static constraints = {
		username blank: false, unique: true
		//		password blank: true
	}

	static mapping = {
		table "t001_user_cat"
		//XXX: http://grails.org/doc/2.0.x/ref/Database%20Mapping/id.html
		id column: 'id_user'
		username column: "tx_username"
		email column: "tx_email"
		enabled column: "bl_enabled"
		accountExpired column: "bl_account_expired"
		accountLocked column: "bl_account_locked"
		passwordExpired column: "bl_password_expired"
	}

	/*
	 Set<Role> getAuthorities() {
	 log.debug("CRAPget autoridades")
	 UserRole.findAllByUser(this).collect { it.role } as Set
	 }
	 */
}
