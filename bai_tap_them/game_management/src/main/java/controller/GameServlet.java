package controller;

import model.service.GameService;
import model.service.Impl.GameServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "GameServlet",urlPatterns = {"","/game_list"})
public class GameServlet extends HttpServlet {
    GameService gameService = new GameServiceImpl();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        loadListGame(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void loadListGame(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listGame",gameService.selectAllGames());
        request.getRequestDispatcher("game/list.jsp").forward(request,response);
    }

}
