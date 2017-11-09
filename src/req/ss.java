package req;

import java.util.ArrayList;

public class ss {
	public static void main(String []args) {
		
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVO> mems = dao.list();
		
		for(MemberVO vo : mems)
		System.out.println(vo.getId());
	}
}
