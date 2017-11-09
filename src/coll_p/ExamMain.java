package coll_p;

import java.util.ArrayList;
import java.util.Arrays;

class Stud{
	String name;
	
	int [] jum;
	
	int sum, avg, rank;

	public Stud(String name, int kor, int eng, int mat) {
		super();
		this.name = name;
		jum = new int[] {kor, eng,  mat};
		cal();
	}
	
	void cal()
	{
		sum =0;
		
		for (int i : jum) {
			sum+=i;
		}
		
		avg = sum/jum.length;
	}
	
	void rankCal(ArrayList<Stud> studs)
	{
		rank=1;
		for (Stud you : studs) {
			if(avg<you.avg)
				rank++;
		}
		System.out.println(this);
	}

	@Override
	public String toString() {
		return name + "\t" + Arrays.toString(jum) + "\t" + 
				sum + "\t" + avg + "\t"	+ rank;
	}
	
	
}
public class ExamMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//�Էº�
		ArrayList<Stud> studs = new ArrayList<>();
		studs.add(new Stud("�嵿��", 77,78,79));
		studs.add(new Stud("�弭��", 67,68,69));
		studs.add(new Stud("�峲��", 97,98,99));
		studs.add(new Stud("���߰�", 57,58,59));
		studs.add(new Stud("�ϵνŰ�", 87,88,89));
		
		//�����
		/*for (Stud me : studs) {
			me.rankCal(studs);
			me.rank=1;
			for (Stud you : studs) {
				if(me.avg<you.avg)
					me.rank++;
			}
		}*/
		
		//��º�
		for (Stud stud : studs) {
			stud.rankCal(studs);
			//System.out.println(stud);
		}
	}

}
