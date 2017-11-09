package array;

import java.util.Arrays;

public class ArrayMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int a = 100;
		int b = a;
		int [] arr1 = {10,20,30,40};
		
		int [] arr2 = arr1;
		
		int [] arr3 = arr1.clone();
		
		
		System.out.println("a:"+a);
		System.out.println("b:"+b);
		System.out.println("arr1:"+arr1);
		System.out.println("arr2:"+arr2);
		System.out.println("arr3:"+arr3);
		
		System.out.println("arr1:"+Arrays.toString(arr1));
		System.out.println("arr2:"+Arrays.toString(arr2));
		System.out.println("arr3:"+Arrays.toString(arr3));
		
		a = 200;
		arr1[1] = 2222;
		System.out.println("------------------------");
		System.out.println("a:"+a);
		System.out.println("b:"+b);
		System.out.println("arr1:"+arr1);
		System.out.println("arr2:"+arr2);
		System.out.println("arr3:"+arr3);
		
		System.out.println("arr1:"+Arrays.toString(arr1));
		System.out.println("arr2:"+Arrays.toString(arr2));
		System.out.println("arr3:"+Arrays.toString(arr3));
		
		int [] arr4;
		arr4 = new int[]{11,22,33,44};
		//arr4 = arr1;
		System.out.println(arr4);
		System.out.println(new int[]{11,22,33,44});
	}

}


