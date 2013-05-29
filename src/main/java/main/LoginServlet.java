package main;

import handler.UyelerHandler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		main.Uyeler uye = new Uyeler(request.getParameter("user"), request.getParameter("pass"));		
		String data = "Kullanıcı bulunamadı !";
		handler.UyelerHandler controller = new UyelerHandler();
		int ret = controller.UyeKayitlimi(uye.getAd(), uye.getSifre());
		if (ret == 1) {
			request.getSession().setAttribute("kullanici", uye.getAd());	
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			request.setAttribute("data", data);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
	}

}
