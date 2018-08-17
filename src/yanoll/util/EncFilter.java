package yanoll.util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(urlPatterns = {
		"../controller/*", "../mapper/*", "../models/dao/*", "../models/service/*", "../models/dao/*", "/*"})
public class EncFilter implements Filter {

    public EncFilter() { }

	public void destroy() { }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		if(request.getCharacterEncoding() == null) {
			request.setCharacterEncoding("utf-8");
		}
		
		chain.doFilter(request, response);
		
	}

	public void init(FilterConfig fConfig) throws ServletException { }

}
