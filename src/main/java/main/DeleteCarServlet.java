package main;

import handler.AraclarHandler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCarServlet
 */
@WebServlet("/deletecar")
public class DeleteCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCarServlet() {
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
		request.setCharacterEncoding("ISO-8859-9");
		String[] arac = request.getParameterValues("data");
		AraclarHandler handler = new AraclarHandler();
		for (int i = 0; i < arac.length; i++) {
			handler.AracSil(arac[i]);
		}
		String info = "Araç(lar) silindi..";
		request.setAttribute("bilgi", info);
		request.getRequestDispatcher("deletecar.jsp").forward(request, response);
	}

}
