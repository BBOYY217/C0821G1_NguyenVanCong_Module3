package model.service.Impl;

import model.bean.Game;
import model.reponsitory.Impl.GameReponsitoryImpl;
import model.service.GameService;

import java.sql.SQLException;
import java.util.List;

public class GameServiceImpl implements GameService {
    GameReponsitoryImpl gameReponsitory = new GameReponsitoryImpl();

    @Override
    public Game selectGame(int id) {
        return gameReponsitory.selectGame(id);
    }

    @Override
    public List<Game> selectAllGames() {
        return gameReponsitory.selectAllGames();
    }

    @Override
    public boolean deleteGame(int id) throws SQLException {
        return gameReponsitory.deleteGame(id);
    }

    @Override
    public boolean updateGame(Game game) throws SQLException {
        return gameReponsitory.updateGame(game);
    }

    @Override
    public Game getGameById(int id) {
        return gameReponsitory.getGameById(id);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        gameReponsitory.insertUpdateWithoutTransaction();
    }

    @Override
    public void insertUpdateUseTransaction() {
        gameReponsitory.insertUpdateGameTransaction();
    }
}
