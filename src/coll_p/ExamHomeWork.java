package coll_p;

import java.util.TreeSet;
import java.util.Arrays;
import java.util.TreeMap;

class StudW implements Comparable<StudW>{
	String name, gender;
	
	int [] jum;
	
	int sum, avg, rank, ban;

	public StudW(int ban,String name,String gender, int kor, int eng, int mat) {
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
	
	void rankCal(TreeSet<StudW> StudWs)
	{
		rank=1;
		for (StudW you : StudWs) {
			if(avg<you.avg)
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
	public int compareTo(StudW o) {
		// TODO Auto-generated method stub
		int res = o.avg-avg;
		
		if(res==0) 
			res=1;
		
		return res;
	}
}
public class ExamHomeWork {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//�Էº�
		TreeSet<StudW> StudWs = new TreeSet<>();
		StudWs.add(new StudW(2,"�嵿��","��", 77,78,79));
		StudWs.add(new StudW(1,"�弭��","��", 67,68,69));
		StudWs.add(new StudW(3,"�峲��","��", 97,98,99));
		StudWs.add(new StudW(1,"���߰�","��", 57,58,59));
		StudWs.add(new StudW(2,"�ϵνŰ�","��", 87,88,89));
		StudWs.add(new StudW(1,"�Ѱ���","��", 77,78,79));
		StudWs.add(new StudW(3,"�ѳ���","�ܰ���", 67,68,69));
		StudWs.add(new StudW(2,"�Ѵ���","��", 97,98,99));
		StudWs.add(new StudW(3,"�Ѷ���","��", 57,58,59));
		StudWs.add(new StudW(1,"�Ѹ���","��", 87,88,89));
		StudWs.add(new StudW(2,"����","��", 75,71,74));
		StudWs.add(new StudW(2,"����","��", 61,61,61));
		StudWs.add(new StudW(3,"����","�ܰ���", 94,94,94));
		StudWs.add(new StudW(1,"�̽��ͺ�","��", 17,28,53));
		StudWs.add(new StudW(3,"�����","�ܰ���", 47,58,79));
		
		//�����
		TreeMap<Integer, TreeMap<String, TreeSet<StudW>>>map 
		= new TreeMap<>();
		
		for (StudW st : StudWs) {
			
			TreeMap<String, TreeSet<StudW>> ban = null;
			if(map.containsKey(st.ban))
				ban = map.get(st.ban);
			else
				ban = new TreeMap<>();
			
			map.put(st.ban, ban );
			
			TreeSet<StudW> gen = null;
			if(ban.containsKey(st.gender))
				gen = ban.get(st.gender);
			else
				gen = new TreeSet<>();
			
			ban.put(st.gender, gen );
			
			gen.add(st);
			
			
		}
		

		
		for(Integer banKey :map.keySet()) {
			
			System.out.println(banKey+" �� >>>>>>");
			
			for (String genKey : map.get(banKey).keySet()) {
			
				System.out.println("["+genKey+"]");
				
				TreeSet<StudW> g = map.get(banKey).get(genKey);
				for (StudW me : g) {
					
					me.rankCal(g);
				}
				
				/*for (int i = 0; i < g.size(); i++) {
					for (StudW me : g) {
						if(i+1==me.rank)
						System.out.println(me);
					}
					//System.out.println(i+1+"---------------");
				}*/
			}
			
		}
		
		
	}

}
