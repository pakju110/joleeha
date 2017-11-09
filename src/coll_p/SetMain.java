package coll_p;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeSet;

public class SetMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayList list = new ArrayList<>();
		Set s1 = new HashSet<>();
		Set s2 = new LinkedHashSet();
		Set s3 = new TreeSet<>();
		
		for (int i = 0; i < 10; i++) {
			int k = (int)(Math.random()*100);
			
			list.add(k);
			s1.add(k);
			s2.add(k);
			s3.add(k);
		}
		
		System.out.println(list);
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		
		System.out.println(list.get(1));
		//System.out.println(s1.get(1));
		
		/*for (Object obj : s1) {
			System.out.println(obj);
		}*/
		
		System.out.println("------------------------");
		Iterator it = s1.iterator();
		
		while(it.hasNext())
		{
			System.out.println(it.next());
		}
		
		
	}

}

