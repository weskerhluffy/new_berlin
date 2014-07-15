grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.work.dir = "target/work"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"

grails.project.fork = [
	// configure settings for compilation JVM, note that if you alter the Groovy version forked compilation is required
	//  compile: [maxMemory: 256, minMemory: 64, debug: false, maxPerm: 256, daemon:true],

	// configure settings for the test-app JVM, uses the daemon by default
	test: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, daemon:true],
	// configure settings for the run-app JVM
	run: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
	// configure settings for the run-war JVM
	war: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
	// configure settings for the Console UI JVM
	console: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256]
]

grails.project.dependency.resolver = "ivy" // or ivy
grails.project.dependency.resolution = {
	// inherit Grails' default dependencies
	inherits("global") {
		// specify dependency exclusions here; for example, uncomment this to disable ehcache:
		// excludes 'ehcache'
		//		excludes "xml-apis"
	}
	log "debug" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
	checksums true // Whether to verify checksums on resolve
	legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

	repositories {
		inherits true // Whether to inherit repository definitions from plugins

		grailsPlugins()
		grailsHome()
		mavenLocal()
		grailsCentral()
		mavenCentral()
		// uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
		//mavenRepo "http://repository.codehaus.org"
		//mavenRepo "http://download.java.net/maven/2/"
		//mavenRepo "http://repository.jboss.com/maven2/"
		mavenRepo "http://snapshots.repository.codehaus.org"
		mavenRepo "http://repository.codehaus.org"
		mavenRepo "http://download.java.net/maven/2/"
		mavenRepo "http://repository.jboss.com/maven2/"
		mavenRepo "http://repo.spring.io/milestone/"
		mavenRepo "https://repository.jboss.org/nexus/content/repositories/releases"
		mavenRepo "http://repo.grails.org/grails/repo"
		mavenRepo "http://central.maven.org/maven2"
		mavenRepo "https://repository.jboss.org/nexus/content/repositories/thirdparty-releases"
	}

	dependencies {
		// specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.
		// runtime 'mysql:mysql-connector-java:5.1.29'
		// runtime 'org.postgresql:postgresql:9.3-1101-jdbc41'
		test "org.grails:grails-datastore-test-support:1.0-grails-2.4"
		runtime 'mysql:mysql-connector-java:5.1.18'
		// Dependencias de caCAS
		compile 'org.opensaml:opensaml:2.6.1', 'org.apache.santuario:xmlsec:2.0.0'
		//		compile "org.opensaml:opensaml:1.1b', 'org.apache.santuario:xmlsec:1.5.2"
		compile 'org.springframework:spring-aop:3.2.9.RELEASE'
		compile 'org.springframework:spring-expression:3.2.9.RELEASE'
		//XXX: https://code.google.com/p/selenium/issues/detail?id=5245
		runtime "xml-apis:xml-apis:1.4.01"
		//XXX: http://stackoverflow.com/questions/10256440/how-to-add-a-non-mavenized-jar-dependency-to-a-grails-project
		//		runtime "xmlapis:xmlapis:1.4.01"
		compile 'org.jasig.cas.client:cas-client-core:3.3.1'
		compile "org.springframework.security:spring-security-cas:3.2.4.RELEASE"
	}

	plugins {
		// plugins for the build system only
		build ":tomcat:7.0.54"

		// plugins for the compile step
		compile ":scaffolding:2.1.2"
		compile ':cache:1.1.7'
		compile ":asset-pipeline:1.8.11"

		// plugins needed at runtime but not for compilation
		runtime ":hibernate4:4.3.5.4" // or ":hibernate:3.6.10.16"
		runtime ":database-migration:1.4.0"
		runtime ":jquery:1.11.1"

		// Uncomment these to enable additional asset-pipeline capabilities
		//compile ":sass-asset-pipeline:1.7.4"
		//compile ":less-asset-pipeline:1.7.0"
		//compile ":coffee-asset-pipeline:1.7.0"
		//compile ":handlebars-asset-pipeline:1.3.0.3"
		// Dependencias de caCAS
		compile ":spring-security-core:2.0-RC3"
		//XXX: http://stackoverflow.com/questions/16520801/grails-how-to-make-grails-get-latest-local-jars-from-maven-repository
		compile (":grails-spring-security-cas:2.0-RC1")
//		runtime (":grails-spring-security-cas:2.0-RC1"){ changing=true}
		runtime (':grails-spring-security-cas-attribs:1.1.1'){ changing = true }
	}
}
