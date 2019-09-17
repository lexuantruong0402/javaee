package entities;


public class Student {
  
    private String name;
    
    private String born;
    
    private String sex;
    
    private String dateIn;
    
    public String getSex() {
    	return sex;
    }
    
    public void setSex(String sex) {
    	this.sex = sex;
    }
    
    public String getBorn() {
    	return born;
    }
    
    public void setBorn(String born) {
    	this.born = born;
    }
    
    public String getDateIn() {
        return dateIn;
    }
    
    public void setDateIn(String dateIn) {
        this.dateIn = dateIn;
    }

    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

 
    public Student(String name, String born, String sex, String dateIn) {
        this.name = name;
        this.dateIn = dateIn;
        this.born = born;
        this.sex = sex;
    }
    public Student(){}
}

