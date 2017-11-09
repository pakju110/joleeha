package coll_p;

import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.TreeSet;

class MyInteger implements Comparable<MyInteger>{
	
	int dd;

	public MyInteger(int dd) {
		super();
		this.dd = dd;
	}

	@Override
	public String toString() {
		return dd+"";
	}
	
	@Override
	public int compareTo(MyInteger o) {
		// TODO Auto-generated method stub
		System.out.println(dd+":"+o.dd);
		int res= (dd-o.dd)*-1;
		if (res==0)
			res = 1;
		return res;
	}
	
	
}


class ComCar{
	String name;
	
	int res;

	public ComCar(String name, int res) {
		super();
		this.name = name;
		this.res = res;
	}

	@Override
	public String toString() {
		return "ComCar [name=" + name + ", res=" + res + "]";
	}
	
	
}


class MyCom implements Comparator<ComCar>{
	@Override
	public int compare(ComCar o1, ComCar o2) {
		// TODO Auto-generated method stub
		
		int res =o1.res-o2.res;
		
		if(res==0)
			res=o1.name.compareTo(o2.name);
		
		return res;
	}
}
public class CompareMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [] arr = {11,45,32,89,76,987,1234,56,76,43};
		TreeSet s1 = new TreeSet<>();
		TreeSet s2 = new TreeSet<>();
		LinkedHashSet s3 = new LinkedHashSet<>();
		
		for (int i : arr) {
			s1.add(i);
			s2.add(new MyInteger(i));
			System.out.println("---------");
			s3.add(i);
		}
		
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		
		System.out.println("----------------------------");
		
		TreeSet s4 = new TreeSet<>(new MyCom());
		s4.add(new ComCar("BMW",77));
		s4.add(new ComCar("벤츠",88));
		s4.add(new ComCar("마세라티",88));
		s4.add(new ComCar("포드",99));
		
		for (Object obj : s4) {
			System.out.println(obj);
		}
		
	}

}
