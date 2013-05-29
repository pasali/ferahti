package main;

import main.AraclarHandler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCarServlet
 */
@WebServlet("/kirala")
public class RentCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RentCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String arac = request.getParameter("data");
		String user = (String) request.getSession().getAttribute("kullanici");
		AraclarHandler handler = new AraclarHandler();
		handler.AracGuncelle(arac, user, "kullanimda");
		String info = "Araç başarı ile seçildi.";
		request.setAttribute("bilgi", info);
		request.getRequestDispatcher("rentcar.jsp").forward(request, response);
		
	}

}
