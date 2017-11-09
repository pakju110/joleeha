package coll_p;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BingooMain {

	public static void main(String[] args) {
		HashSet bingoo = new HashSet<>();
		
		while(true)
		{
			bingoo.add((int)(Math.random()*100+1));
			if(bingoo.size()==25)
				break;
		}
		int i=0;
		for (Object obj: bingoo) {
			System.out.print(obj+"\t");
			i++;
			if(i%5==0)
				System.out.println();
		}
	}
}
