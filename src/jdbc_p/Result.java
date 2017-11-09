package jdbc_p;

public class Result {
	String name;
	int kor, eng, mat;
	int sum= kor+eng+mat;
	int avg = sum/3;

	
	public Result(String name, int kor, int eng, int mat, int sum, int avg) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		this.sum = sum;
		this.avg = avg;
	}
		
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public int getAvg() {
		return avg;
	}

	public void setAvg(int avg) {
		this.avg = avg;
	}

	@Override
	public String toString() {
		return "Result [name=" + name + ", kor=" + kor + ", eng=" + eng + ", mat=" + mat + ", sum=" + sum + ", avg="
				+ avg + "]";
	}

	
	
}
