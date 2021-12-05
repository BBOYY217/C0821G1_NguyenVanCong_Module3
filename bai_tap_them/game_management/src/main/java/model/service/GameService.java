package model.service;

import model.bean.Game;

import java.sql.SQLException;
import java.util.List;

public interface GameService {
    Game selectGame(int id);
    List<Game> selectAllGames();
    boolean deleteGame (int id) throws SQLException;
    boolean updateGame (Game game) throws SQLException;
    Game getGameById(int id);
    void insertUpdateWithoutTransaction();
    void insertUpdateUseTransaction();
}
