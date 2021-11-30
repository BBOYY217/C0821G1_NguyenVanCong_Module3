import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstNumber= Double.parseDouble(request.getParameter("first-number"));
        double secondNumber = Double.parseDouble(request.getParameter("second-number"));
        char operator = request.getParameter("operator").charAt(0);

        try{
            double result = Calculator.calculate(firstNumber, secondNumber, operator);
            request.setAttribute("operatorNumer",result);
        }catch (Exception e){
            e.getMessage();
        }
        request.getRequestDispatcher("Display.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
