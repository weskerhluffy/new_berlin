package hi.furor.vo

class Role {

	String authority

	public Role(String authority){
		this.authority=authority
	}

	//XXX: http://groovy.329449.n5.nabble.com/Constructors-and-Groovy-td371040.html
	public Role(Map m){
		this.authority=m.authority
	}


	static mapping = {
		table "t002_role_cat"
		id column: 'id_role'
		authority column: "tx_authority"
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
