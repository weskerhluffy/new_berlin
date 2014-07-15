//XXX: http://stackoverflow.com/questions/10613500/grails-spring-security-plugin-secured-annotation-not-resolved
import grails.plugin.springsecurity.annotation.Secured


/**
 * Simple controller that will redirect user to CAS, and then back to the home page.
 * @author daniel.d.bower
 */
@Secured(['IS_AUTHENTICATED_REMEMBERED'])
class LoginCasController {

	def index = { redirect(uri:"/") }
}
