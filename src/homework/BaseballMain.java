package homework;

import java.util.TreeMap;

public class BaseballMain {

	public static void main(String[] args) {
		String rec ="h_1,h_3,h_5,a_2,a_4,h_7,h_9,a_8,"
				+ "h_1,h_2,h_3,h_9,a_1,a_2,a_3,a_5,a_6";
		
		String [] arr = rec.split(",");
		
		TreeMap<String, TreeMap<Integer,Integer>> map = new TreeMap<>();
				//ÆÀ				//¼±¼ö¹øÈ£  ¾ÈÅ¸°¹¼ö
	
		for (String player : arr) {
			String [] pp = player.split("_");
			
			TreeMap<Integer, Integer> team = null;
			if(map.containsKey(pp[0]))
				team = map.get(pp[0]);
			else 
				team = new TreeMap<>();
			
			map.put(pp[0], team);
			
			int num = Integer.parseInt(pp[1]);
			
			int cnt = 1;
			if(team.containsKey(num))
				cnt += team.get(num);
			
			team.put(num,cnt);
		}
	
		for (String key : map.keySet()) {
			System.out.println(key + "ÆÀ>>>>>>>>>");
			for (int num : map.get(key).keySet()) {
				System.out.println(num+":"+map.get(key).get(num));
				
				
			}
		}
		
		
	}

}
