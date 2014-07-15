grails.project.work.dir = 'target'
//grails.project.dependency.resolver = "maven"

grails.project.dependency.resolution = {

	inherits 'global'
	log 'warn'

	repositories {
		grailsCentral()
		mavenLocal()
		mavenCentral()
		mavenRepo "https://repository.jboss.org/nexus/content/repositories/thirdparty-releases"
		//XXX: http://stackoverflow.com/questions/19196442/dependencies-issue-with-spring-security-core-plugin
		mavenRepo 'http://repo.spring.io/milestone'
		mavenRepo "https://repository.jboss.org/nexus/content/repositories/releases"
	}

	dependencies {
//		compile 'opensaml:opensaml:1.1b', 'org.apache.santuario:xmlsec:1.5.2'
		compile 'org.opensaml:opensaml:2.6.1', 'org.apache.santuario:xmlsec:2.0.0'
		compile 'org.springframework:spring-aop:3.2.9.RELEASE'
		compile 'org.springframework:spring-expression:3.2.9.RELEASE'
	}

	plugins {
		//		compile ':spring-security-cas:1.0.5'
		compile ":spring-security-core:2.0-RC3"
		compile ":spring-security-cas:2.0-RC1"

		runtime ":hibernate4:4.3.5.4" // or ":hibernate:3.6.10.16"
		/*
		 runtime(":hibernate:$grailsVersion") {
		 export = false
		 }
		 */
		build ':release:2.2.1', ':rest-client-builder:1.0.3', { export = false }
	}
}
