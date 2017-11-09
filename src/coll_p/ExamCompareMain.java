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
		
		//입력부
		TreeSet<StudCC> StudCCs = new TreeSet<>();
		StudCCs.add(new StudCC(2,"장동건","여", 77,78,79));
		StudCCs.add(new StudCC(1,"장서건","남", 67,68,69));
		StudCCs.add(new StudCC(3,"장남건","여", 97,98,99));
		StudCCs.add(new StudCC(1,"장중건","여", 57,58,59));
		StudCCs.add(new StudCC(2,"북두신건","여", 87,88,89));
		StudCCs.add(new StudCC(1,"한가인","남", 77,78,79));
		StudCCs.add(new StudCC(3,"한나인","외계인", 67,68,69));
		StudCCs.add(new StudCC(2,"한다인","여", 97,98,99));
		StudCCs.add(new StudCC(3,"한라인","여", 57,58,59));
		StudCCs.add(new StudCC(1,"한마인","여", 87,88,89));
		StudCCs.add(new StudCC(2,"원빈","여", 75,71,74));
		StudCCs.add(new StudCC(2,"현빈","여", 61,61,61));
		StudCCs.add(new StudCC(3,"김우빈","외계인", 94,94,94));
		StudCCs.add(new StudCC(1,"미스터빈","여", 17,28,53));
		StudCCs.add(new StudCC(3,"장희빈","외계인", 47,58,79));
		String ban = "";
		String gender = "";
		for (StudCC st : StudCCs) {
			if(!ban.equals(st.ban+""))
			{
				ban = st.ban+"";
				System.out.println(ban+"반 >>>>>>>>");
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
