package com.yohavo.CI1;

import com.yohavo.CI1.service.CustomOAuth2UserService;
import com.yohavo.CI1.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClientService;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.ui.Model;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomOAuth2UserService oauthUserService;

    @Autowired
    private UserService userService;

    @Autowired
    OAuth2AuthorizedClientService clientService;
//    @Autowired
//    OAuth2AuthenticationToken oauthToken;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                /*
                .csrf()
                    .disable()
                .headers()
                    .frameOptions()
                    .sameOrigin()
                .and()
                */

                .authorizeRequests()
                    .antMatchers("/")
                        .anonymous()
                    .antMatchers("/", "/login", "/files/**", "/oauth/**", "/termsandconditions", "/privacy")
                        .permitAll()
                    .anyRequest()
                        .authenticated()
                .and()
                .oauth2Login()
                    .loginPage("/login")
                    .userInfoEndpoint()
                    .userService(oauthUserService)
                .and()
                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                                        Authentication authentication) throws IOException, ServletException {
                        Object oauthUser = authentication.getPrincipal();
                        String email = StringUtils.substringBetween(oauthUser.toString(), "email=", "}");
                        String name =StringUtils.substringBetween(oauthUser.toString(), "name=", ",");
                        //System.out.println("---- "+name);
                        userService.processOAuthPostLogin(email,name);
                        response.sendRedirect("/index");
                    }
                });
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring()
                .antMatchers("/files/**");
    }
}
