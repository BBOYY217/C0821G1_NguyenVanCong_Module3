import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = {"","/customer_list"})
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Nguyen Van A","19-06-1999","DN","null"));
        customerList.add(new Customer("Nguyen Van B","01-02-2000","HN","null"));
        customerList.add(new Customer("Nguyen Van C","09-11-1992","HCM","null"));
        customerList.add(new Customer("Nguyen Van D","15-04-1989","QN","null"));

        request.setAttribute("CustomerListServlet",customerList);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
