package controller;

import model.Game;
import service.GameDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "GameServlet", value = "/gameServlet")
public class GameServlet extends HttpServlet {

    public class UserServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;
        private GameDAO gameDAO;

        public void init() {
           gameDAO  = new GameDAO() ;
        }

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            switch (action) {
                case "edit":
                    updateGame(request,response);
                    break;
                case "delete":
                    deleteGame(request, response);
                    break;
            }
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            switch (action) {
                case "edit":
                    updateGame(request,response);
                    break;
                case "delete":
                    deleteGame(request, response);
                    break;
            }
        }
    }
// doget
    private void deleteGame(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Game existingUser = GameDAO.selectGame(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/edit.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);
    }

    private void updateGame(HttpServletRequest request, HttpServletResponse response) {
    }

}