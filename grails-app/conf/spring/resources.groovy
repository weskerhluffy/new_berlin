// Place your Spring DSL code here
//import org.springframework.security.cas.ServiceProperties
import org.jasig.cas.client.proxy.Cas20ProxyRetriever
beans = {
	//XXX: http://forum.spring.io/forum/other-spring-related/grails/86028-how-are-grails-applications-loaded-bootstrapped
	//XXX: http://grails.1312388.n4.nabble.com/Grails-2-3-2-Has-Been-Released-td4651229.html
	//XXX: http://mrhaki.blogspot.mx/2013/10/grails-goodness-setting-property-values.html
	//	casTicketValidator{ renew=true}
	//XXX: https://github.com/spring-projects/spring-security/blob/master/cas/src/main/java/org/springframework/security/cas/ServiceProperties.java
	//	casServiceProperties{artifactParameter="ticket"}
	/*
	 casServiceProperties(ServiceProperties){
	 artifactParameter="ticket"
	 authenticateAllArtifacts=true}
	 */
	casProxyRetriever(Cas20ProxyRetriever,"d","UTF-8",null)
}
