package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import obj.UserInfoObj;
import service.UserInfoService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");

		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/LoginPage.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		UserInfoObj userInfoObj = new UserInfoObj();

		userInfoObj.setEmail(request.getParameter("email"));

		UserInfoService userInfoService = new UserInfoService();
		boolean emailExists  = userInfoService.isEmailExists(userInfoObj.getEmail());
		if (emailExists ) {
			request.setAttribute("errroMsg", "他の会員が登録済みのメールアドレスは登録できません。");

			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/LoginPage.jsp");
			dispatcher.forward(request, response);
		} else {

			userInfoObj.setUserId(request.getParameter("userId"));
			userInfoObj.setPassword(request.getParameter("password"));
			userInfoObj.setNameSei(request.getParameter("nameSei"));
			userInfoObj.setNameMei(request.getParameter("nameMei"));
			userInfoObj.setNameSeiKata(request.getParameter("nameSeiKata"));
			userInfoObj.setNameMeiKata(request.getParameter("nameMeiKata"));

			request.setAttribute("userInfoObj", userInfoObj);
			HttpSession session = request.getSession();
			session.setAttribute("userInfoObj", userInfoObj);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/ConfirmationPage.jsp");
			dispatcher.forward(request, response);
		}
	}

}