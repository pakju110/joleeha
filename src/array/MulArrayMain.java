package array;

public class MulArrayMain {

	public static void main(String[] args) {
		
		int[][] arr1 = {
				{0,1,2,3,4},
				{10,11,12,13,14,15},
				{20,21,22,23}
				};
		
		System.out.println(arr1);//�ּҰ��� ����ִ�!
		System.out.println(arr1[0]);//�ּҰ��� ����ִ�!
		System.out.println(arr1[0][1]);//�ش��ϴ� ���� ���� �ִ�!
		
		System.out.println(arr1.length);
		System.out.println(arr1[0].length);
		System.out.println(arr1[1].length);
		System.out.println(arr1[2].length);
		
		for (int i = 0; i < arr1.length; i++) {
			for (int j = 0; j < arr1[i].length; j++) {
				System.out.print(arr1[i][j]+",");
			}
			System.out.println();
		}
		
		int [] arr2 = new int[3];
		
		int [] arr3 = {111,222,333,444};
		
		int [][] arr4 = { 
				new int [5],
				arr2,
				arr3,
				arr1[1],
				{1010,2020,3030,4040,5050}
			};
		
		int [][] arr6 = new int [5][];
 		
		arr6[0] = arr1[1];
		arr6[1] = new int [7];
		arr6[2] = new int[] {3456,678,890}; //�ּҰ� ��. ���̾ƴ϶�!
		
		//int [][] arr7 = new int [][4]; ��� �ȵ�!!!!!!!!!!!!!!!!!!
		//int [][][] arr8 = new int[2][][4]; ��ŵ� �ȵ˴ϴ�!!!!!!!!!!�ּҰ��̳� ���� �� ������ ���������
		
		System.out.println("------------------------");
		
		int [][] arr8 = new int[3][];
		
		for (int i = 0; i < arr8.length; i++) {
			System.out.println(arr8[i]); //->null
		}
		System.out.println("------------------------");
		
	
		}
	
	}

