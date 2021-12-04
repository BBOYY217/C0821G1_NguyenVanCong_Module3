package controller;

import model.Game;
import service.GameImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "GameServlet", value = "/Games")
public class GameServlet extends HttpServlet {

    private GameImpl gameImpl;

    private static final long serialVersionUID = 1L;

    public void init() {
        gameImpl = new GameImpl();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertGame(request, response);
                    break;
                case "edit":
                    updateGame(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteGame(request, response);
                    break;
                default:
                    listGame(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listGame(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Game> listGame = gameImpl.selectAllGame();
        request.setAttribute("listgame", listGame);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Game existingUser = gameImpl.selectGame(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/edit.jsp");
        request.setAttribute("game", existingUser);
        dispatcher.forward(request, response);
    }

    private void deleteGame(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        gameImpl.deleteGame(id);

        List<Game> listGame = gameImpl.selectAllGame();
        request.setAttribute("listGame", listGame);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/list.jsp");
        dispatcher.forward(request, response);
    }

    private void insertGame(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String version = request.getParameter("version");
        String mode = request.getParameter("mode");
        String category = request.getParameter("category");
        Game newGame = new Game(id, name, version, mode, category);
        gameImpl.insertGame(newGame);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/create.jsp");
        dispatcher.forward(request, response);
    }

    private void updateGame(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String version = request.getParameter("email");
        String mode = request.getParameter("country");
        String category = request.getParameter("category");

        Game games = new Game(id, name, version, mode, category);
        gameImpl.updateGame(games);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/edit.jsp");
        dispatcher.forward(request, response);
    }
}
