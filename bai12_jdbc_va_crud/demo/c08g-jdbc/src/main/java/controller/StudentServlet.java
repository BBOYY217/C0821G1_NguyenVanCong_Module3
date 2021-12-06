package controller;

import bean.Student;
import service.IStudentService;
import service.impl.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentServlet", urlPatterns = {"", "/student_list"})
public class StudentServlet extends HttpServlet {

    // DI
    private IStudentService studentService = new StudentService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");

        if (actionUser == null) {
            actionUser = "";
        }

        switch (actionUser) {
            case "create":
                String name = request.getParameter("studentName");
                String dateOfBirth = request.getParameter("dateOfBirth");

                Student studentObj = new Student();
                studentObj.setName(name);
                studentObj.setDateOfBirth(dateOfBirth);

                this.studentService.save(studentObj);

                this.loadList(request, response);

                break;
            default:
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String actionUser = request.getParameter("actionUser");

        if (actionUser == null) {
            actionUser = "";
        }

        switch (actionUser) {
            case "create":
                request.getRequestDispatcher("create_student.jsp").forward(request, response);
                break;
            default:
                this.loadList(request, response);
                break;
        }

    }

    private void loadList(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setAttribute("studentListServlet", this.studentService.findAll());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
