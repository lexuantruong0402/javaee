package model;

import java.util.HashMap;
import java.util.Map;

import entities.Student;

public class Model {
	private Map<String, Student> model = new HashMap<String, Student>();
	private static Model instance = new Model();
	
	public static Model getInstance() {
        return instance;
    }
	
	public void add(String studentID, Student student) {
		model.put(studentID, student);
	}
	
	public Map<String, Student> list(){
		return model;
	}
	
	public Student get(String studentID) {
		return model.get(studentID);
	}
	
	public void delete(String studentID) {
		model.remove(studentID);
	}
	
	public void edit(String studentID, Student student) {
		model.replace(studentID, student);
	}
}
