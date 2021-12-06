package controller;

import model.bean.Subject;
import model.service.Impl.SubjectServiceImpl;
import model.service.SubjectService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SubjectServlet", urlPatterns = {"","/subject_list"})
public class SubjectServlet extends HttpServlet {
    SubjectService subjectService = new SubjectServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case"Insert":
                showInsertSubject(request,response);
            default:
                showListSubject(request,response);
                break;
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            insertSubject(request,response);
    }

    private void insertSubject(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String version = request.getParameter("version");
        String mode = request.getParameter("mode");
        int time = Integer.parseInt(request.getParameter("time"));

        Subject subjectObj = new Subject();
        subjectObj.setName(name);
        subjectObj.setVersion(version);
        subjectObj.setMode(mode);
        subjectObj.setTime(time);

        request.setAttribute("insertSubject",subjectService.insert(subjectObj));
        request.getRequestDispatcher("subject/insert.jsp").forward(request,response);
        showListSubject(request,response);
    }

    private void showListSubject(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listSubject",subjectService.selectAllSubject());
        request.getRequestDispatcher("subject/list.jsp").forward(request,response);
    }
    private void showInsertSubject(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("subject/insert.jsp").forward(request,response);
    }

}
