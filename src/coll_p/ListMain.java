package coll_p;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ListMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		List arr1 = new ArrayList<>();
		
		arr1.add(12);
		arr1.add(34);
		arr1.add(78);
		arr1.add(12);
		arr1.add(56);
		arr1.add(44);
		
		System.out.println(arr1);
		
		arr1.remove(2);
		System.out.println(arr1);
		arr1.add("ÄÉ·Î·Î");
		arr1.set(1,"567");
		System.out.println(arr1.size());
		System.out.println(arr1.get(2));
		System.out.println(arr1.contains(35));
		List arr2 = arr1.subList(1, 3);
		System.out.println(arr2);
		System.out.println(arr1);
		//arr1.removeAll(arr2);
		//arr1.retainAll(arr2);
		Collections.sort(arr1);
		System.out.println(arr1);
		Collections.reverse(arr1);
		System.out.println(arr1);
	}

}
