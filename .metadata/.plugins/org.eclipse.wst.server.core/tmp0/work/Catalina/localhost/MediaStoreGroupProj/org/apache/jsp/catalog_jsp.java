/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.64
 * Generated at: 2015-11-29 20:52:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class catalog_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/user-navigation.jsp", Long.valueOf(1448745534137L));
    _jspx_dependants.put("/site-navigation.jsp", Long.valueOf(1448745534090L));
    _jspx_dependants.put("/footerHome.jsp", Long.valueOf(1448745534152L));
    _jspx_dependants.put("/headerHome.jsp", Long.valueOf(1448754266031L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Homepage - Golden Media Store</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!--\r\n");
      out.write("        wrapper for the whole page\r\n");
      out.write("        -->\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("            <div id=\"header\">\r\n");
      out.write("                <div id=\"headerUser\"> Please log in</div>\r\n");
      out.write("                <div><a href=\"LoginController?name=login\" style=\"text-decoration: none\">Login</a></div>\r\n");
      out.write("                <div id=\"title\">Golden Media Store</div>\r\n");
      out.write("                <a href=\"#\">\r\n");
      out.write("        \t\t<img src=\"music.jpg\" id=\"logo\" alt=\"Golden Media Store\">\r\n");
      out.write("    \t\t\t</a>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div id=\"staticHome\">HOME</div>\r\n");
      out.write("            </div>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("            <div id=\"navBar\">\r\n");
      out.write("                <table class=\"navBarLinks\">\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td><a class=\"navBarSignIn\" href=\"#\">Sign In</a></td>\r\n");
      out.write("                        <td id=\"bar2\"><a class=\"navBarCart\" href=\"cart.jsp\">Cart</a></td>\r\n");
      out.write("                        <td><a class=\"navBarOrders\" href=\"orderlist.jsp\">My Orders</a></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </table>   \r\n");
      out.write("            </div>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<div id=\"midSection\">\r\n");
      out.write("    <div id=\"sideNav\">\r\n");
      out.write("        <div id=\"sideLinks\">\r\n");
      out.write("            <a class=\"sideHome\" href=\"index.jsp\">Home</a>\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            -------------------------\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            <a class=\"sideCatalog\" href=\"catalog.jsp\">Catalog</a>\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            -------------------------\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            <a class=\"sideAbout\" href=\"about.jsp\">About Us</a>\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            -------------------------\r\n");
      out.write("            <br>\r\n");
      out.write("            <br>\r\n");
      out.write("            <a class=\"sideContact\" href=\"contact.jsp\">Contact Us</a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<body>\r\n");
      out.write("<div id = \"catalogWrapper\">\r\n");
      out.write("\r\n");
      out.write("<h1>Albums</h1>\r\n");
      out.write("\r\n");
      out.write("<ul>\r\n");
      out.write("<li><a href=\"CatalogController? --- url\" style=\"text-decoration: none\">1989</a></li>\r\n");
      out.write("<li><a href=\"CatalogController? --- url\" style=\"text-decoration: none\">Delirium</a></li>\r\n");
      out.write("<li><a href=\"CatalogController? --- url\" style=\"text-decoration: none\">21</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"bottomSec\" align=right>\r\n");
      out.write("    &copy; Golden Media Store Inc.\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
