package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class hopdong_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body class=\"container\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base/header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\" col-md-9 col-lg-9 \"> \n");
      out.write("                <table class=\"table table-user-information\">\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Tên khách hàng:</td>\n");
      out.write("                            <td>Programming</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Số điện thoại:</td>\n");
      out.write("                            <td>06/23/2013</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Ngày sinh:</td>\n");
      out.write("                            <td>01/24/1988</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Địa chỉ:</td>\n");
      out.write("                            <td>Female</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Xe thuê: </td>\n");
      out.write("                            <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Ngày thuê - Ngày trả: </td>\n");
      out.write("                            <td><a href=\"mailto:info@support.com\">info@support.com</a></td>\n");
      out.write("                        </tr>\n");
      out.write("                    <td>Tiền cọc:</td>\n");
      out.write("                    <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)</td>\n");
      out.write("                    </tr>\n");
      out.write("                    </tr>\n");
      out.write("                    <td>Tài sản đảm bảo:</td>\n");
      out.write("                    <td>123-4567-890(Landline)<br><br>\n");
      out.write("                        <select name=\"DropDownTimezone\" id=\"DropDownTimezone\" class=\"input-xlarge\">\n");
      out.write("                            <option value=\"-12.0\">(GMT -12:00) Eniwetok, Kwajalein</option>\n");
      out.write("                            <option value=\"-11.0\">(GMT -11:00) Midway Island, Samoa</option>\n");
      out.write("                            <option value=\"-10.0\">(GMT -10:00) Hawaii</option>\n");
      out.write("                            <option value=\"-9.0\">(GMT -9:00) Alaska</option>\n");
      out.write("                        </select><input type=\"submit\" value=\"Thêm\" /><br><br>\n");
      out.write("                        <input type=\"submit\" value=\"Thêm tài sản đảm bảo\">\n");
      out.write("                    </td>\n");
      out.write("                    </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("                <input type=\"submit\" value=\"Tạo hợp đồng\" />\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base/footer.jsp", out, false);
      out.write("\n");
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
