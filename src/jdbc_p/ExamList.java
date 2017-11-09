package jdbc_p;

import java.util.TreeSet;


public class ExamList {

	String [] name, tel;
	int [] age,kor, eng, mat;
	
	TreeSet<Student> arr = new TreeSet<>();
	
	public TreeSet<Student> getArr() {
		return arr;
	}

	public void listConvert()
	{
		for (int i = 0; i < age.length; i++) {
			arr.add(new Student(name[i],tel[i],age[i]));
		}
	}
	
	public void examConvert()
	{
		for (int i = 0; i < name.length; i++) {
			arr.add(new Student(name[i],kor[i],eng[i],mat[i]));
		}
		
		
		for(Student st: arr) {
			st.rankCal(arr);
		}
	}
	
	public int[] getKor() {
		return kor;
	}

	public void setKor(int[] kor) {
		this.kor = kor;
	}

	public int[] getEng() {
		return eng;
	}

	public void setEng(int[] eng) {
		this.eng = eng;
	}

	public int[] getMat() {
		return mat;
	}

	public void setMat(int[] mat) {
		this.mat = mat;
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
