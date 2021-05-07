package sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/saudacao")
public class OlaMundoServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>");
		out.println("Ola mundo, primeiro servlet do zupinho");
		out.println("</h1>");
		out.println("</body>");
		out.println("</html>");
		
		System.out.println("ola mundo chamado");
	}

}
