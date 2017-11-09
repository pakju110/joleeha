package coll_p;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class LottoMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Set<Integer> lotto = new HashSet<>();
		TreeSet<Integer> res=null;
		
		int i =-1;
		while(true)
		{
			i=(int)(Math.random()*45+1);
			lotto.add(i);
			
			if(lotto.size()==6)
				res = new TreeSet(lotto);
			
			if(lotto.size()==7)
				break;
		}
		
		System.out.println(res+""+i);
		System.out.println(lotto);
	}

}
