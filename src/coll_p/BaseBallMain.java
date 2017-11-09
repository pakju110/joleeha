package coll_p;

import java.util.TreeMap;

public class BaseBallMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String rec ="h_1,h_3,h_5,a_2,a_4,h_7,a_8,"
				+ "h_2,a_3,a_4,a_7,a_8,h_5,a_2,a_4,h_8,h_9";
		
		String [] arr = rec.split(",");
		
		TreeMap<String, TreeMap<Integer, Integer>>map 
			//  ÆÀ                                  ¼±¼ö¹øÈ£            ¾ÈÅ¸È½¼ö
		= new TreeMap<>();
		
		for (String player : arr) {
			String [] pp = player.split("_");
			
			TreeMap<Integer, Integer>team = null;
			if(map.containsKey(pp[0]))
				team = map.get(pp[0]);
			else
				team = new TreeMap<>();
			
			map.put(pp[0],team);
			
			int num = Integer.parseInt(pp[1]);
			
			int cnt =1;
			if(team.containsKey(num))
				cnt+=team.get(num);
			
			team.put(num,cnt);
		}
		
		for (String key : map.keySet()) {
			System.out.println(key+"ÆÀ>>>>>>>>");
			for (int num : map.get(key).keySet()) {
				System.out.println(num+":"+map.get(key).get(num));
			}
		}
		
	}

}
