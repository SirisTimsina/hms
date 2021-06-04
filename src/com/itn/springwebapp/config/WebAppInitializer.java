package com.itn.springwebapp.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] { DatabaseConfig.class, WebAppSecurity.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[] { WebAppConfig.class } ;
		// Dispatcher servlet is our mainServlet, the configuration for which is provided through 
		// this file loaded by WebAppInitializer when application is run at server
	}

	@Override
	protected String[] getServletMappings() {
		
		return new String[] {"/"};
		// the dispatcher servlet is maped to root url telling the system that all 
		// request and response has to go through it
	}

}
