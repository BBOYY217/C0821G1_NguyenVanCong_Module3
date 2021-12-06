package model.bean;

public class Game {
    private int id;
    private String name;
    private String version;
    private String mode;
    private String category;

    public Game(int id, String name, String version, String mode, String category) {
        this.id = id;
        this.name = name;
        this.version = version;
        this.mode = mode;
        this.category = category;
    }

    public Game() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


}
