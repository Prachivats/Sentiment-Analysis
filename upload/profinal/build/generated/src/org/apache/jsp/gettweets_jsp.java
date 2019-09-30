package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gettweets_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/menu.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"bann.jpg\">\n");
      out.write("         <form method=\"POST\" action=\"review.jsp\">\n");
      out.write("             ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"refresh\" content=\"67\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write(".nav ul ul {\n");
      out.write("\tdisplay: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\t.nav ul li:hover > ul {\n");
      out.write("\t\tdisplay: block;\n");
      out.write("\t}\n");
      out.write(".nav ul {\n");
      out.write("\tbackground: #efefef; \n");
      out.write("\tbackground: linear-gradient(top, #efefef 0%, #bbbbbb 100%);  \n");
      out.write("\tbackground: -moz-linear-gradient(top, #efefef 0%, #bbbbbb 100%); \n");
      out.write("\tbackground: -webkit-linear-gradient(top, #efefef 0%,#bbbbbb 100%); \n");
      out.write("\t\n");
      out.write("\tpadding: 0 0px;\n");
      out.write("\tborder-radius: 10px;  \n");
      out.write("\tlist-style: none;\n");
      out.write("\tposition: relative;\n");
      out.write("\tdisplay: inline-table;\n");
      out.write("\ttop:0;\n");
      out.write("\t\n");
      out.write("}\n");
      out.write("\t.nav ul:after {\n");
      out.write("\t\tcontent: \"\"; clear: both; display: block;\n");
      out.write("\t}\n");
      out.write(".nav ul li {\n");
      out.write("\tfloat: left;\n");
      out.write("}\n");
      out.write("\t.nav ul li:hover {\n");
      out.write("\t\tbackground: #4b545f;\n");
      out.write("\t\tbackground: linear-gradient(top, #4f5964 0%, #5f6975 40%);\n");
      out.write("\t\tbackground: -moz-linear-gradient(top, #4f5964 0%, #5f6975 40%);\n");
      out.write("\t\tbackground: -webkit-linear-gradient(top, #4f5964 0%,#5f6975 40%);\n");
      out.write("\t}\n");
      out.write("\t\t.nav ul li:hover a {\n");
      out.write("\t\t\tcolor: #fff;\n");
      out.write("\t\t}\n");
      out.write("\t\n");
      out.write("\t.nav ul li a {\n");
      out.write("\t\tdisplay: block; padding: 11px 110px;\n");
      out.write("\t\tcolor: #757575; text-decoration: none;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write(".nav ul ul {\n");
      out.write("\tbackground: #5f6975; border-radius: 0px; padding: 0;\n");
      out.write("\tposition: absolute; top: 100%;\n");
      out.write("}\n");
      out.write("\t.nav ul ul li {\n");
      out.write("\t\tfloat: none; \n");
      out.write("\t\tborder-top: 1px solid #6b727c;\n");
      out.write("\t\tborder-bottom: 1px solid #575f6a;\n");
      out.write("\t\tposition: relative;\n");
      out.write("\t}\n");
      out.write("\t\t.nav ul ul li a {\n");
      out.write("\t\t\tpadding: 15px 110px;\n");
      out.write("\t\t\tcolor: #fff;\n");
      out.write("\t\t}\t\n");
      out.write("\t\t\t.nav ul ul li a:hover {\n");
      out.write("\t\t\t\tbackground: #4b545f;\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div class=\"nav\" style=\"height:200px;width:3000px;position:absolute; top:26%;float:left;\">\n");
      out.write("<ul>\n");
      out.write("\t<li><a href=\"Home.jsp\" style=\"width:140px\">Home</a></li>\n");
      out.write("        <li><a href=\"#\" style=\"width:140px\">Genres</a>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t<li><a href=\"fiction.jsp\">Fiction</a></li>\n");
      out.write("\t\t<li><a href=\"Children.jsp\">Children</a></li>\n");
      out.write("\t\t<li><a href=\"Love story.jsp\">Love story</a></li>\n");
      out.write("\t\t<li><a href=\"horror.jsp\">Horror</a></li>\n");
      out.write("                <li><a href=\"Science.jsp\">Science Fiction</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t </li>\n");
      out.write("\t<li><a href=\"contact.jsp\" style=\"width:140px\">Contact us</a></li>\n");
      out.write("\t<li><a href=\"about.jsp\" style=\"width:140px\">About us</a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("    <div id=\"images\" style=\"top:0%;\"><img src=\"ifinal copy.png\" width=\"1450\" height=\"170\"> </div>\n");
      out.write("    <div id=\"i1\" style=\"top:40%;position:absolute;left:30px\">\n");
      out.write("        <a href='logout.jsp'><font face=\"aerial\" size=\"6\" color=\"black\"> <b>Log out</b></font></a>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <button id=\"b1\" align=\"center\">Click here to get the ratings</button>\n");
      out.write("         </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
