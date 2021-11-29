import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculator", value = "/Calculator")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_description = request.getParameter("product_description");
        int list_price = Integer.parseInt(request.getParameter("list_price"));
        int discount_percent =  Integer.parseInt(request.getParameter("discount_percent"));

        int discount_amount = (int) (list_price * discount_percent * 0.01);
        int discount_price = list_price - discount_amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h3>Product Description: " + product_description + "</h3><br>");
        writer.println("<h3>List Price: " + list_price + "</h3><br>");
        writer.println("<h3>Discount Percent: " + discount_percent + "</h3><br>");
        writer.println("<h3>Discount Amount: " + discount_amount + "</h3><br>");
        writer.println("<h3>Discount Price: " + discount_price + "</h3><br>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
