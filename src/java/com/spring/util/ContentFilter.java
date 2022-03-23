package com.spring.util;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 过滤器
 */
public class ContentFilter extends org.springframework.web.filter.CharacterEncodingFilter {

    private FilterConfig filterConfig;

    // Handle the passed-in FilterConfig

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;

        super.doFilterInternal(request, response, filterChain);
    }

    // Process the request/response pair
    // Clean up resources
    public void destroy() {}
}
