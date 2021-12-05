package controller;

import model.bean.Game;
import model.service.GameService;
import model.service.Impl.GameServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class GameServlet {
    private GameService gameService;

    @WebServlet(name = "GameServlet", urlPatterns = "/games")
    public class UserServlet extends HttpServlet {
        private static final long SERIAL_VERSION_UID = 1L;
        private GameServiceImpl gameService;

        public void init() {
            gameService = new GameServiceImpl();
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            try {
                switch (action) {
                    case "edit":
                        updateGame(request, response);
                        break;
                }
            }catch (SQLException e) {
                throw new ServletException(e);
            }
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            try {
                switch (action) {
                    case "edit":
                        showEditForm(request, response);
                        break;
                    case "delete":
                        deleteUser(request, response);
                        break;
                    default:
                        listUser(request, response);
                        break;
                }
            }catch (SQLException e){
                throw new ServletException(e);
            }
        }
    }

    private void updateGame(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String version = request.getParameter("version");
        String mode = request.getParameter("mode");
        String category = request.getParameter("category");

        Game gameUpdate = new Game(id, name, version, mode, category);
        gameService.updateGame(gameUpdate);
        request.setAttribute("message", "Update successful");
        request.getRequestDispatcher("user/edit.jsp").forward(request, response);
    }



    private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Game> listGame = gameService.selectAllGames();
        request.setAttribute("listGame", listGame);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/list.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        gameService.deleteGame(id);

        List<Game> listGame = gameService.selectAllGames();
        request.setAttribute("listGame", listGame);
        RequestDispatcher dispatcher = request.getRequestDispatcher("game/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Game existingGame = gameService.selectGame(id);
        request.setAttribute("existingGame", existingGame);
        request.getRequestDispatcher("game/edit.jsp").forward(request, response);
    }
}
