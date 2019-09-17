package controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Student;
import model.Model;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet(urlPatterns = "/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("view/add.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get all infor from form
		String studentID = request.getParameter("studentID");
		String name = request.getParameter("name");
		String born = request.getParameter("born");
		String sex = request.getParameter("sex");
		String dateIn = request.getParameter("dateIn");
		
		//create new student
		Student student = new Student(name,born,sex,dateIn);
		Model model = Model.getInstance();
		// add it into model
		model.add(studentID, student);
		
		request.setAttribute("data", model);
        doGet(request, response);
	}

}
