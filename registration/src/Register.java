import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Register() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userid=request.getParameter("username");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String password=request.getParameter("password1");
		String phonenumber=request.getParameter("phonenumber");
		String secretquestion=request.getParameter("secretquestion");
		String secretanswer=request.getParameter("secretanswer");
		String address=request.getParameter("address");
		//String utype=request.getParameter("utype");
		String utype="user";
		Registration registration=new Registration(userid, name, gender, email, password,  phonenumber, secretquestion, secretanswer, address, utype);
	    RegisterDao rDao=new RegisterDao();
	    String result=rDao.insert(registration);
	    response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
