package coll_p;

import java.util.HashSet;

public class Bingo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashSet bingo = new HashSet<>();
		
		while(true)
		{
			bingo.add((int)(Math.random()*100+1));
			if(bingo.size()==25)
				break;
		}
		int i=0;
		for (Object obj : bingo) {
			System.out.print(obj+"\t");
			i++;
			if(i%5==0)
				System.out.println();
		}
	}

}
