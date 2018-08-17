package yanoll.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

@WebServlet("*.do")
public class GngControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GngControler() {
		super();

	}

	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextpath = request.getContextPath();
		String command = requestURI.substring(contextpath.length() + 16);
        System.out.println(command);
        System.out.println(1);
		GngAction action = null;
		GngActionFoward forward = null;

		if (command.equals("Insertenquire.do")) {
			action = new GngInqInsertFormAction();
			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(command);
			
		} else if (command.equals("GngInqInsertAction")) {
			action = new GngInqInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			if (forward != null) {
				if (forward.isRedirect()) {
					response.sendRedirect(forward.getPath());
				} else {
					RequestDispatcher dipatcher = request.getRequestDispatcher(forward.getPath());
					dipatcher.forward(request, response);

				}
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

}