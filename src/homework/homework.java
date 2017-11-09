package homework;

import java.util.TreeSet;

class team implements Comparable<team> {
	String teamname;
	int num;
	String name;
	String position;
	int hit;

	public team(String teamname, int num, String name, String position, int hit) {
		super();
		this.teamname = teamname;
		this.num = num;
		this.name = name;
		this.position = position;
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "이름:" + name + ", 포지션:"+ position + ", 등번호 : " + num + ", 안타 :" + hit + "]";
	}

	@Override
	public int compareTo(team o) {

		int res = teamname.compareTo(o.teamname);
		if (res == 0) {
			res = position.compareTo(o.position);
			if(res==0) {
				res = o.hit - hit;
				if (res == 0) {
					res = num - o.num;
					if(res==0)
					res = 1;
				}
			}
		
	}return res;
	}	
}


public class homework {

	public static void main(String[] args) {
		TreeSet<team> result = new TreeSet<>();
		result.add(new team("NC", 52, "노진혁","내야수", 4));
		result.add(new team("NC", 3, "모창민","내야수", 2));
		result.add(new team("NC", 2, "박민우","내야수", 0));
		result.add(new team("NC", 18, "박석민","내야수", 0));
		result.add(new team("NC", 13, "손시헌","내야수", 1));
		result.add(new team("NC", 35, "스크럭스","내야수", 1));
		result.add(new team("NC", 27, "이호준","지명타자", 1));
		result.add(new team("NC", 36, "권희동","외야수", 2));
		result.add(new team("NC", 31, "김성욱","외야수", 0));
		result.add(new team("NC", 1, "김준완","외야수", 0));
		result.add(new team("NC", 47, "나성범","외야수", 1));
		result.add(new team("NC", 39, "이종욱","외야수", 0));
		result.add(new team("NC", 42, "김태군","포수", 1));

		result.add(new team("롯데", 8, "전준우","외야수", 2));
		result.add(new team("롯데", 24, "김문호","외야수", 0));
		result.add(new team("롯데", 23, "나경민","외야수", 0));
		result.add(new team("롯데", 31, "손아섭","외야수", 2));
		result.add(new team("롯데", 10, "이대호","내야수", 4));
		result.add(new team("롯데", 27, "박헌도","외야수", 0));
		result.add(new team("롯데", 47, "강민호","포수", 1));
		result.add(new team("롯데", 39, "나종덕","포수", 1));
		result.add(new team("롯데", 98, "번즈","내야수", 0));
		result.add(new team("롯데", 6, "문규현","내야수", 0));
		result.add(new team("롯데", 25, "최준석","지명타자", 1));
		result.add(new team("롯데", 67, "김동한","내야수", 0));
		result.add(new team("롯데", 33, "정훈","내야수", 0));
		result.add(new team("롯데", 7, "신본기","내야수", 1));

		String teamname="";
		String position="";
		
		for (team team : result) {
			if(!teamname.equals(team.teamname)) {
				teamname=team.teamname;
				System.out.println();
				System.out.println(teamname+">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
				
			}
			
			if(!position.equals(team.position)) {
				position = team.position;
				System.out.println("["+position+"]");
			}
			
			if(team.hit!=0)
			System.out.println(team);
		}

	}

}
