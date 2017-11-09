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
		return "�̸�:" + name + ", ������:"+ position + ", ���ȣ : " + num + ", ��Ÿ :" + hit + "]";
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
		result.add(new team("NC", 52, "������","���߼�", 4));
		result.add(new team("NC", 3, "��â��","���߼�", 2));
		result.add(new team("NC", 2, "�ڹο�","���߼�", 0));
		result.add(new team("NC", 18, "�ڼ���","���߼�", 0));
		result.add(new team("NC", 13, "�ս���","���߼�", 1));
		result.add(new team("NC", 35, "��ũ����","���߼�", 1));
		result.add(new team("NC", 27, "��ȣ��","����Ÿ��", 1));
		result.add(new team("NC", 36, "����","�ܾ߼�", 2));
		result.add(new team("NC", 31, "�輺��","�ܾ߼�", 0));
		result.add(new team("NC", 1, "���ؿ�","�ܾ߼�", 0));
		result.add(new team("NC", 47, "������","�ܾ߼�", 1));
		result.add(new team("NC", 39, "������","�ܾ߼�", 0));
		result.add(new team("NC", 42, "���±�","����", 1));

		result.add(new team("�Ե�", 8, "���ؿ�","�ܾ߼�", 2));
		result.add(new team("�Ե�", 24, "�蹮ȣ","�ܾ߼�", 0));
		result.add(new team("�Ե�", 23, "�����","�ܾ߼�", 0));
		result.add(new team("�Ե�", 31, "�վƼ�","�ܾ߼�", 2));
		result.add(new team("�Ե�", 10, "�̴�ȣ","���߼�", 4));
		result.add(new team("�Ե�", 27, "���嵵","�ܾ߼�", 0));
		result.add(new team("�Ե�", 47, "����ȣ","����", 1));
		result.add(new team("�Ե�", 39, "������","����", 1));
		result.add(new team("�Ե�", 98, "����","���߼�", 0));
		result.add(new team("�Ե�", 6, "������","���߼�", 0));
		result.add(new team("�Ե�", 25, "���ؼ�","����Ÿ��", 1));
		result.add(new team("�Ե�", 67, "�赿��","���߼�", 0));
		result.add(new team("�Ե�", 33, "����","���߼�", 0));
		result.add(new team("�Ե�", 7, "�ź���","���߼�", 1));

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
