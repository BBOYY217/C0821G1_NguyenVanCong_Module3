package model.service;

import model.bean.Game;

import java.sql.SQLException;
import java.util.List;

public interface GameService {
    List<Game> selectAllGames() ;

}
