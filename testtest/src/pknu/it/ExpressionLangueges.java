package pknu.it;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import testtest.Company;
import testtest.Employee;
import testtest.Message;
import testtest.Name;



/**
 * Servlet implementation class ExpressionLangueges
 */
@WebServlet("/el")
public class ExpressionLangueges extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExpressionLangueges() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Name n = new Name("kam","dongkeun");
		Employee e1 = new Employee(n,new Company("samsung","korea"));
		request.setAttribute("emp", e1);

		request.setAttribute("attr1", "EL_value1");
		HttpSession session = request.getSession();
		session.setAttribute("attr2", "EL_value2");
		ServletContext application = request.getServletContext();
		application.setAttribute("attr3", "EL_value3");
		request.setAttribute("dupname", "value_request");
		session.setAttribute("dupname", "value_session");
		application.setAttribute("dupname", "value_application");
		Message msg = new Message();
		msg.setCode(1);
		request.setAttribute("msg", msg);
		RequestDispatcher dispatcher =
		request.getRequestDispatcher("/bean-peroperties.jsp");
		dispatcher.forward(request, response);
		
		
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
