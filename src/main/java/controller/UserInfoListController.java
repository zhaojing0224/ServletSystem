package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import obj.UserInfoObj;
import service.UserInfoService;

/**
 * Servlet implementation class UserInfoListController
 */
@WebServlet("/UserInfoListController")
public class UserInfoListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserInfoListController() {
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

		UserInfoService userInfoService = new UserInfoService();
		List<UserInfoObj> userInfoObj = userInfoService.getUserInfoList(null);

		request.setAttribute("userInfoObj", userInfoObj);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/UserInfoListPage.jsp");
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		try {
			String email = request.getParameter("email");
			
			UserInfoService userInfoService = new UserInfoService();
			List<UserInfoObj> userInfoObj = userInfoService.getUserInfoList(email);
	        
	        request.setAttribute("userInfoObj", userInfoObj);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/UserInfoListPage.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
