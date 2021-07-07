package com.lima.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.util.UrlPathHelper;

@ComponentScan("com.lima.web.*.controller")
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {

    // 파일 업로드를 위하여 spring 에서 제공하는 클래스
    @Bean
    public MultipartResolver multipartResolver() {
        // CommonsFileUpload API를 이용하여 Multipart를 처리해준다.
        CommonsMultipartResolver mr = new CommonsMultipartResolver();

        // 최대 업로드 가능한 바이트 크기 type: long
        mr.setMaxUploadSize(1000000000);
        // 디스크에 임시 파일을 생성하기 전에 메모리에 보관할수있는 최대 바이트크기 기본값은 10240바이트 type: int
        mr.setMaxInMemorySize(2000000000);

        mr.setMaxUploadSizePerFile(500000000);
        return mr;
    }
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver vr = new InternalResourceViewResolver("/WEB-INF/jsp/", ".jsp");
        return vr;
    }

    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        UrlPathHelper helper = new UrlPathHelper();
        helper.setRemoveSemicolonContent(false);
        configurer.setUrlPathHelper(helper);
    }
}
