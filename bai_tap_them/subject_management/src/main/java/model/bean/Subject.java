package model.bean;

public class Subject {
    private int id;
    private String name;
    private String version;
    private String mode;
    private int time;

    public Subject() {
    }

    public Subject(int id, String name, String version, String mode, int time) {
        this.id = id;
        this.name = name;
        this.version = version;
        this.mode = mode;
        this.time = time;
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

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }
}
