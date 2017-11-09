package implicit;

import java.util.Arrays;

public class Stud {

	String name="";
	
	int no,sum,avg;
	
	Integer [] jum= {0,0,0};

	
	public Stud(String name, int no) {
		super();
		this.name = name;
		this.no = no;
	}
	public Stud() {
		// TODO Auto-generated constructor stub
	}
	public Stud(String name, String kor, String eng, String mat) {
		super();
		//System.out.println(name+kor+eng+mat);;
		this.name = name;
		
		if (kor.equals(""))
			kor ="0";
		if (eng.equals(""))
			eng ="0";
		if (mat.equals(""))
			mat ="0";
		
		jum = new Integer[] {
				Integer.parseInt(kor),
				Integer.parseInt(eng),
				Integer.parseInt(mat)
				};
	}

	
	@Override
	public String toString() {
		return "Stud [name=" + name + ", jum=" + Arrays.toString(jum) + ", sum=" + sum + ", avg=" + avg + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Integer getJum(int i) {
		return jum[i];
	}
	
	public String strJum(int i) {
		
		String res = "";
		
		if(jum[i]>0)
			res+=jum[i];
		
		return res;
	}
	public void setJum(int i, Integer jum ) {
		this.jum[i] = jum;
	}
	public int getAvg() {
		return avg;
	}
	
	
	public int getSum() {
		return sum;
	}
	public void cal()
	{
		sum =0;
		for (Integer i : jum) {
			sum+=i;
		}
		avg = sum/jum.length;
	}
	
}
