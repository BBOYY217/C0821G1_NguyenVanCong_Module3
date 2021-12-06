package model.service.Impl;

import model.bean.Game;
import model.reponsitory.Impl.GameRepositoryImpl;
import model.service.GameService;

import java.sql.SQLException;
import java.util.List;

public class GameServiceImpl implements GameService {
    private GameRepositoryImpl gameReponsitory = new GameRepositoryImpl();

    @Override
    public List<Game> selectAllGames() {
        return gameReponsitory.selectAllGames();
    }


}
