package coll_p;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ArrayVSLinked {

	static void add1(List arr,String name)
	{
		long ss = System.currentTimeMillis();
		
		for (int i = 0; i < 1000000; i++) {
			arr.add(i);
		}
		System.out.println(name+" 순차추가:"+(System.currentTimeMillis()-ss));
	}
	static void add2(List arr,String name)
	{
		long ss = System.currentTimeMillis();
		
		for (int i = 0; i < 10000; i++) {
			arr.add(30,i);
		}
		System.out.println(name+" 비순차추가:"+(System.currentTimeMillis()-ss));
	}
	
	static void remove2(List arr,String name)
	{
		long ss = System.currentTimeMillis();
		
		for (int i = 0; i < 10000; i++) {
			arr.remove(500);
		}
		System.out.println(name+" 비순차삭제:"+(System.currentTimeMillis()-ss));
	}

	public static void main(String[] args) {
		ArrayList list1 = new ArrayList<>();
		LinkedList list2 = new LinkedList<>();
		
		add1(list1,"array");
		add1(list2,"linked");
		
		
		add2(list1,"array");
		add2(list2,"linked");
		//System.out.println("list1:"+list1);
		//System.out.println("list2:"+list2);
		
		remove2(list1,"array");
		remove2(list2,"linked");
	}

}
