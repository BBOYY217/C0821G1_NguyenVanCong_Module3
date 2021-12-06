package model.reponsitory;

import model.bean.Game;

import java.sql.SQLException;
import java.util.List;

public interface GameReponsitory {
    List<Game> selectAllGames () throws SQLException;



}
