package req;

public class dd {
	public static void main(String[] args) {
		
		System.out.println("1¹ø");
		for(int i=1 ;i<=5; i++) {
			for(int j=1; j<=i; j++) {
				System.out.print("*");
			
			}
			System.out.println();
		}
		
		System.out.println("2¹ø");
		for(int i=5 ;i>=1; i--) {
			for(int j=1; j<=i; j++) {
				System.out.print("*");
			}
		System.out.println();
		}
		
		
		
		System.out.println("3¹ø");
		for (int i = 1; i <=10; i++) {
			for (int j = 1; j <= 10; j++) {
				if(j>10-i) {
				System.out.print("*");
			}else {
				System.out.print(" ");
			}
		}
			System.out.println();
}
		System.out.println("4¹ø");
		for (int i = 1; i <=10; i++) {
			for (int j = 1; j <= 10; j++) {
				if(i>j) {
					System.out.print(" ");
				}else {
					System.out.print("*");
				}
			}System.out.println();
		}
		
		
		
		System.out.println("3¹ø");
		  for(int i=1;i<=10;i++){
			  for(int j=1;j<=10-i;j++){
				  System.out.print(" ");
			  }
			  for(int j=1;j<=i;j++){
				  System.out.print("*");
			}System.out.println();
		  
		  }
		  
		  System.out.println("4¹ø");
		  for(int i = 1; i <=10; i++)
			  for(int j=1; j<=10-i; j++) {
				  System.out.println(" ");
			  }
	
		  
		  
System.out.println("----------");
		  
		  System.out.print(" ");
		  System.out.print(" ");
		  System.out.print(" ");
		  System.out.print("*");
		  System.out.print(" ");
		  System.out.print(" ");
		  System.out.println(" ");
		  System.out.print(" ");		  System.out.print(" ");
		  System.out.print("*");
		  System.out.print("*");
		  System.out.print("*");
		  System.out.print(" ");System.out.println(" ");
		  System.out.print(" ");
		  System.out.print("*");
		  System.out.print("*");
		  System.out.print("*"); 
		  System.out.print("*");
		  System.out.println("*");

		  System.out.print("*");
		  System.out.print("*"); 
		  System.out.print("*"); 
		  System.out.print("*"); 
		  System.out.print("*");
		  System.out.print("*");
		  System.out.println("*");		  
		  
		  for(int i =1; i<=100; i++) {
			 /* if(i/10==0) {
				  if(i%3==0) {
					  System.out.println("Â¦");
				  }else {
					  System.out.println(i);
				  }
			  }
			  if(i/10==1) {
				  if(i%3==1) {
					  System.out.println("Â¦");
				  }else {
					  System.out.println(i);
				  }
				  
			  }*/
			  
			  if(i==3||i==6||i==9||i==13||i==16||i==19||i==23||i==26||i==29||i==30||i==31||i==32||i==33||i==34||i==35||i==36||i==37||
					  i==38||i==39||i==43||i==46||i==49||i==53||i==56||i==59||i==60||i==61||i==62||i==63||i==64||i==65||i==66||i==67||i==68||
					  i==69||i==73||i==76||i==79||i==83||i==86||i==89||i==90||i==91||i==92||i==93||i==94||i==95||i==96||i==97||i==98||
					  i==99) {
				  System.out.print("Â¦, ");
			  }else {
				  System.out.print(i+",");
			  }
		  }
}
}