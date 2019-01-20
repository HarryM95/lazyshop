

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import management.AenderungsManager;

/**
 * Servlet implementation class AenderungsServlet
 */
@WebServlet("/AenderungsServlet")
public class AenderungsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AenderungsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		String buchid = request.getParameter("buchID");
		String datum = request.getParameter("datum");
		String status = request.getParameter("status");
		String adresse = request.getParameter("adresse");
		
		int kid = 20;
		
		AenderungsManager am = new AenderungsManager();
		
		if("Absagen".equals(action)) {
			request.setAttribute("buchid", buchid);
			int buchidneu = Integer.parseInt(buchid);
			am.buchungAbsagen(buchidneu, kid);
			
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/buchungenAnzeigenServlet"); 
			dispatcher.forward(request, response);
		}
		
		if("Adresse aendern".equals(action)) {
			request.setAttribute("buchid", buchid);
			request.setAttribute("datum", datum);
			request.setAttribute("status", status);
			request.setAttribute("adresse", adresse);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/adresseAnpassen.jsp"); 
			dispatcher.forward(request, response);
		}
		
		if("Speichern".equals(action)) {
			String add = request.getParameter("add");
			request.setAttribute("add", add);
			am.aenderAdresse(kid, add);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/buchungenAnzeigenServlet"); 
			dispatcher.forward(request, response);
		}
			
	}

}
