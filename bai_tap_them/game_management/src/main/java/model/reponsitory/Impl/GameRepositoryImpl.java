package model.reponsitory.Impl;

import model.bean.Game;
import model.reponsitory.GameReponsitory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GameRepositoryImpl implements GameReponsitory {


    @Override
    public List<Game> selectAllGames() {
        List<Game> gameList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("select id,namer,versionn,modes,category \n" +
                            "from game") ;
            ResultSet resultSet = preparedStatement.executeQuery();

            Game gameObj;
            while (resultSet.next()) {
                gameObj = new Game();
                gameObj.setId(Integer.parseInt(resultSet.getString("id")));
                gameObj.setName(resultSet.getString("namer"));
                gameObj.setVersion(resultSet.getString("versionn"));
                gameObj.setMode(resultSet.getString("modes"));
                gameObj.setCategory(resultSet.getString("category"));

                gameList.add(gameObj);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return gameList;
    }
}

