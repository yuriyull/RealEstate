package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
@ComponentScan(basePackages = {"FileUpload"})
public class FileConfig {
	
	@Bean
	public CommonsMultipartResolver multipartResolver()	{
		CommonsMultipartResolver mr = new CommonsMultipartResolver();
		mr.setMaxInMemorySize(52428800);
		mr.setDefaultEncoding("utf-8");
		return mr;
	}
}
