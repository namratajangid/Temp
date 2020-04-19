package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--\n");
      out.write("Author: Colorlib\n");
      out.write("Author URL: https://colorlib.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Sign In to Easy Essentials</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("    <!-- Custom Theme files -->\n");
      out.write("    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("    <!-- //Custom Theme files -->\n");
      out.write("    <!-- web font -->\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i\" rel=\"stylesheet\">\n");
      out.write("    <!-- //web font -->\n");
      out.write("</head>\n");
      out.write("<body style=\"background-image: url('try7.jpg');\">\n");
      out.write("  <!-- main -->\n");
      out.write("  <div>\n");
      out.write("      <div class=\"main-w3layouts wrapper\">\n");
      out.write("        <h1>Easy Essentials</h1>\n");
      out.write("        <div class=\"main-agileinfo\">\n");
      out.write("          <div class=\"agileits-top\">\n");
      out.write("            <form action=\"loginprocessing.jsp\" method=\"post\">\n");
      out.write("              <input class=\"text email\" type=\"email\" name=\"emailLogin\" placeholder=\"Email\" required=\"\">\n");
      out.write("              <input class=\"text\" type=\"password\" name=\"passwordLogin\" placeholder=\"Password\" required=\"\">\n");
      out.write("              <input type=\"submit\" value=\"SIGNIN\">\n");
      out.write("              <!-- onclick=\"C:\\Users\\Sheetal\\Downloads\\vegetableSelection.html\" -->\n");
      out.write("          </form>\n");
      out.write("          <p>Don't have an Account? <a href=\"reg.jsp\"> SignUp Now!</a></p>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("  <!-- copyright -->\n");
      out.write("  <div class=\"colorlibcopy-agile\">\n");
      out.write("      <p></p>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");

//request.getSession().setAttribute("passwordLogin", passwordLogin);

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
