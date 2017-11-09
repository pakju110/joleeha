package coll_p;

import java.util.TreeSet;
import java.util.Arrays;
import java.util.TreeMap;

class StudCC implements Comparable<StudCC>{
	String name, gender;
	
	int [] jum;
	
	int sum, avg, rank, ban;

	public StudCC(int ban,String name,String gender, int kor, int eng, int mat) {
		super();
		this.name = name;
		this.ban = ban;
		this.gender = gender;
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
	
	void rankCal(TreeSet<StudCC> StudCCs)
	{
		rank=1;
		for (StudCC you : StudCCs) {
			if(avg<you.avg && ban==you.ban && gender.equals(you.gender))
				rank++;
		}
		System.out.println(this);
	}

	@Override
	public String toString() {
		return ban+ "\t" +name + "\t" +gender+ "\t" + Arrays.toString(jum) + "\t" + 
				sum + "\t" + avg + "\t"	+ rank;
	}
	
	@Override
	public int compareTo(StudCC o) {
		// TODO Auto-generated method stub
		int res = ban - o.ban; 
		
		if(res==0) 
			res= gender.compareTo(o.gender);
		
		if(res==0) 
			res = o.avg-avg;
		
		if(res==0) 
			res=1;
		
		return res;
	}
}
public class ExamCompareMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//�Էº�
		TreeSet<StudCC> StudCCs = new TreeSet<>();
		StudCCs.add(new StudCC(2,"�嵿��","��", 77,78,79));
		StudCCs.add(new StudCC(1,"�弭��","��", 67,68,69));
		StudCCs.add(new StudCC(3,"�峲��","��", 97,98,99));
		StudCCs.add(new StudCC(1,"���߰�","��", 57,58,59));
		StudCCs.add(new StudCC(2,"�ϵνŰ�","��", 87,88,89));
		StudCCs.add(new StudCC(1,"�Ѱ���","��", 77,78,79));
		StudCCs.add(new StudCC(3,"�ѳ���","�ܰ���", 67,68,69));
		StudCCs.add(new StudCC(2,"�Ѵ���","��", 97,98,99));
		StudCCs.add(new StudCC(3,"�Ѷ���","��", 57,58,59));
		StudCCs.add(new StudCC(1,"�Ѹ���","��", 87,88,89));
		StudCCs.add(new StudCC(2,"����","��", 75,71,74));
		StudCCs.add(new StudCC(2,"����","��", 61,61,61));
		StudCCs.add(new StudCC(3,"����","�ܰ���", 94,94,94));
		StudCCs.add(new StudCC(1,"�̽��ͺ�","��", 17,28,53));
		StudCCs.add(new StudCC(3,"�����","�ܰ���", 47,58,79));
		String ban = "";
		String gender = "";
		for (StudCC st : StudCCs) {
			if(!ban.equals(st.ban+""))
			{
				ban = st.ban+"";
				System.out.println(ban+"�� >>>>>>>>");
				gender = "";
			}
			
			if(!gender.equals(st.gender+""))
			{
				gender = st.gender+"";
				System.out.println("["+gender+"]");
			}
			st.rankCal(StudCCs);
		}
		
		
	}

}
