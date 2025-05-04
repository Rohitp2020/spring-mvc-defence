package com.springsecurity.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
//		Class[] rootConfigFiles = {JpaConfig.class};
//		return rootConfigFiles;
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] webConfigFiles = {MyAppConfig.class};
		return webConfigFiles;
	}

	@Override
	protected String[] getServletMappings() {
		String[] mappings = {"/"};
		return mappings;
	}

}
