package array;

import java.util.HashMap;

public class newone {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [][] arr = {//��������
				{77,76,78},
				{97,96,98,91},
				{57,56,58},
				{67,66,68,61},
				{87,86,88}
				
		};
		int [][] res = new int[arr.length][3];//���� ��� �հ�
		for (int i = 0; i < arr.length; i++) {//i
			for (int j = 0; j < arr[i].length; j++) {
				res[i][0] += arr[i][j];//���� ���ϴ���
			}
			res[i][1] = res[i][0]/arr[i].length;//���
		}
		
		/*for (int[] me : res) {//��� ����
			me[2] =1;
			for (int[] you : res) {
				if(me[1]<you[1])
					me[2]++;
			}
		}*/
		HashMap<Integer, Integer> hm = new HashMap<>();
		HashMap<Integer, Integer> hm2 = new HashMap<>();
		
		int m = 0;
		int n = 0;
		
		for(int i=0; i<arr.length; i++) {
			if(arr[i].length==3) { //���񼼰�
				res[i][2]=1; //���1������
				hm.put(m, i); //���񼼰��� ������ i���� m�� ����
				m++; // �� �� +1.. ������� (0,0) , (1,2) , (2,4) ����
			}else{ //���� �װ�
				res[i][2]=1;
				hm2.put(n, i);	// (0,1) , (1,3)����
				n++;
			}
		}
		
			for(int j=0; j<hm.size(); j++) { //hm.size() = 3
				for(int h=0; h<hm.size(); h++) {
					if(res[hm.get(j)][1]<res[hm.get(h)][1]) // Ű 0 1 2 �� ������γ�����
												//�� 0 2 4 �� ������� ���� ��
						res[hm.get(j)][2]++;	 // ����� 1���ϱ�
				}
			}
			for(int j=0; j<hm2.size(); j++) { //hm2.size() = 2
				for(int h=0; h<hm2.size(); h++) {
					if(res[hm2.get(j)][1]<res[hm2.get(h)][1]) // Ű 0 1  �� ������γ�����
											//�� 1, 3 �� ������� ���� ��
						res[hm2.get(j)][2]++; 
				}
			}
			
		for (int i = 0; i < arr.length; i++) {
			for (int k : arr[i]) {
				System.out.print(k+",");
			}
			for (int k : res[i]) {
				System.out.print(k+",");
			}
			System.out.println();
		}
	}
}
