package jdbc_p;

import java.util.ArrayList;

public class ResultList {
	String[] name;
	int[] kor,eng,mat;
	int[]sum;
	int[]avg;
	
	ArrayList<Result> array = new ArrayList<>();
	
	
	public ArrayList<Result> getArray() {
		return array;
	}
	
	public void listConver() {
		for (int i = 0; i < name.length; i++) {
			System.out.println("½¬¹ß"+sum[i]+","+kor[i]+","+eng[i]+","+mat[i]+","+avg[i]);
			sum[i] = kor[i]+eng[i]+mat[i];
			avg[i]=sum[i]/3;
			array.add(new Result(name[i], kor[i], eng[i], mat[i], sum[i], avg[i]));
		}
	}

	public String[] getName() {
		return name;
	}

	public void setName(String[] name) {
		this.name = name;
	}

	public int[] getKor() {
		return kor;
	}

	public void setKor(int[] kor) {
		this.kor = kor;
	}

	public int[] getEng() {
		return eng;
	}

	public void setEng(int[] eng) {
		this.eng = eng;
	}

	public int[] getMat() {
		return mat;
	}

	public void setMat(int[] mat) {
		this.mat = mat;
	}

	public int[] getSum() {
		return sum;
	}

	public void setSum(int[] sum) {
		this.sum = sum;
	}

	public int[] getAvg() {
		return avg;
	}

	public void setAvg(int[] avg) {
		this.avg = avg;
	}
	
}
