package jdbc_p;

import java.util.TreeSet;

public class Student implements Comparable<Student>{

	String name, tel;
	
	int age, sum, avg, rank;
	
	int [] jum;
	
	void rankCal(TreeSet<Student> arr) {
		rank=1;
		
		for(Student you: arr) {
			if(avg<you.avg)
				rank++;
		}
	}
	
	public int getRank() {
		return rank;
	}

	public Student(String name, int kor, int eng, int mat) {
		super();
		this.name = name;
		jum = new int[]{kor,  eng, mat};
		
		
		this.sum = sum;
		this.avg = avg;
		
		cal();
	}
	
	void cal()
	{
		sum=0;
		for (int i : jum) {
			sum+=i;
		}
		avg = sum/jum.length;
	}
	
	public int getJum(int i)
	{
		return jum[i];
	}
	
	public int getSum() {
		return sum;
	}

	public int getAvg() {
		return avg;
	}

	public Student(String name, String tel, int age) {
		super();
		this.name = name;
		this.tel = tel;
		this.age = age;
	}

	public Student() {
		// TODO Auto-generated constructor stub
		name="알아서 뭐하는 각";
		tel = "번호따지마셈 차단요";
		age = 13;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return " [" + name + ", " + tel + ", " + age + "]";
	}

	@Override
	public int compareTo(Student o) {
		// TODO Auto-generated method stub
		int res = o.avg-avg;
		if(res==0)
			res=1;
		return res;
	}
	
	
}
