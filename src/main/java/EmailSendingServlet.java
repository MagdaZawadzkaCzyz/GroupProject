import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 *
 * @author www.codejava.net
 *
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        String recipient = "stajniaenklawa@gmail.com";

        String name = request.getParameter("name");
        String replyTo = request.getParameter("email");
        String phone = request.getParameter("phone");
        String serviceType = request.getParameter("serviceType");
        String dateFrom = request.getParameter("dateFrom");
        String dateTo = request.getParameter("dateTo");
        String additionalMessage = request.getParameter("message");

        String subject = "Rezerwacja [" + serviceType + "] " + name + " " + dateFrom + " - " + dateTo;

        String content = "<html><head><meta charset=\"utf-8\\\">\n" +
                "<style>\n" +
                "    body {\n" +
                "        background-color: #1d2124;\n" +
                "        color: white;\n" +
                "        font-family: Candara;\n" +
                "    }\n" +
                "    .content {\n" +
                "        margin: 20px 0 0 20px;\n" +
                "        font-size: 16px;\n" +
                "    }\n" +
                "    .name {\n" +
                "        font-size: 18px;\n" +
                "    }\n" +
                "    .email {\n" +
                "        font-size: 14px;\n" +
                "        color: aquamarine;\n" +
                "    }\n" +
                "    .phone {\n" +
                "        font-size: 20px;\n" +
                "    }\n" +
                "    .date {\n" +
                "        font-size: 20px;\n" +
                "        color: aquamarine;\n" +
                "    }\n" +
                "    a:visited, a:active, a:link {\n" +
                "        font-family: \"Arial\";\n" +
                "        text-decoration-line: none;\n" +
                "        font-weight: normal;\n" +
                "        color: aquamarine;\n" +
                "    }\n" +
                "    a:hover {\n" +
                "        font-weight: bold;\n" +
                "        text-decoration-line: none;\n" +
                "        color: lightblue;\n" +
                "    }\n" +
                "\n" +
                "</style></head><body>\n" +
                "<div class=\"content\">\n" +
                "<p class=\"name\"><b> " + name + " </b></p>\n" +
                "<p class=\"email\">email:  " + replyTo + "</p>\n" +
                "    <p>tel. <a href=\"tel:" + phone + "\"><span class=\"phone\">" + phone + "</span></a></p>\n" +
                "<p>usługa: " + serviceType + "</p>\n" +
                "    <p>termin od  <span class=\"date\">" + dateFrom + "</span>  do  <span class=\"date\">" + dateTo + "</span></p>\n" +
                "<p>wiadomość:  " + additionalMessage + " </p></div></body></html>";


        String resultMessage = "";

        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, replyTo, name, subject,
                    content);
            resultMessage = "Prośba o rezerwację zostala wysłana. Teraz poczekaj na potwierdzenie na email.";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "Wystąpił błąd: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(
                    request, response);
        }
    }
}