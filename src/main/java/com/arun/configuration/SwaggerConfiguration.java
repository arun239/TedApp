package com.arun.configuration;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Created by arun on 30/09/18.
 */

@Configuration
@EnableSwagger2
@ConditionalOnProperty(name = "enableSwagger", havingValue = "true")
public class SwaggerConfiguration {
    @Bean
    public Docket productApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.arun"))
                .build()
                .apiInfo(metaData());
    }

    private ApiInfo metaData() {
        ApiInfo apiInfo = new ApiInfo(
                "TedApp REST API",
                "TedApp REST API",
                "1.0",
                "-",
                new Contact("Arun Gupta", "-", "gupta.arun665@gmail.com"),
                "",
                "");
        return apiInfo;
    }
}
