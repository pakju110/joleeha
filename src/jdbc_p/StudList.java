package jdbc_p;

import java.util.ArrayList;

public class StudList {

	String [] name, tel;
	int [] age;
	
	ArrayList<Student> arr = new ArrayList<>();
	
	public ArrayList<Student> getArr() {
		return arr;
	}

	public void listConvert()
	{
		for (int i = 0; i < age.length; i++) {
			arr.add(new Student(name[i],tel[i],age[i]));
		}
	}
	
	public String[] getName() {
		return name;
	}
	public void setName(String[] name) {
		this.name = name;
	}
	public String[] getTel() {
		return tel;
	}
	public void setTel(String[] tel) {
		this.tel = tel;
	}
	public int[] getAge() {
		return age;
	}
	public void setAge(int[] age) {
		this.age = age;
	}
	
	
}
