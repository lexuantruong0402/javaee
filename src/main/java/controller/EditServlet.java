package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Student;
import model.Model;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet(urlPatterns = "/edit")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("view/edit.jsp").forward(request, response);
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
		
		//create a new object student
		Student student = new Student(name,born,sex,dateIn);
		Model model = Model.getInstance();
		//edit it in model
		model.edit(studentID, student);
		
		request.setAttribute("data", model);
        doGet(request, response);
	}

}
