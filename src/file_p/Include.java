package file_p;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

public class Include {

	String path = "C:/Users/use/eclipse-workspace/jsp/WebContent/fff";

	String img =  path+"_copy/img";
	String music =  path+"_copy/music";
	String doc =  path+"_copy/doc";
	String lyrics =  path+"_copy/lyrics";
	String etc =  path+"_copy/etc";

	public void checktype(String hwak, String filename) throws IOException { //여깁니다 여기

		String[] a = { "jpg", "gif", "bmp", "png" };
		String[] b = { "mp3", "wav", "midi", "cda", "ogg" };
		String[] c = { "doc", "xls", "pptx","ppt", "hwp" };

		ArrayList<String> arr = new ArrayList<String>();

		if (hwak.equals(a[0]) || hwak.equals(a[1]) || hwak.equals(a[2]) || hwak.equals(a[3])) {
			File file = new File(img);// img폴더만들기
			if (!file.exists()) {
				file.mkdirs();
			}
			Path f = Paths.get(path + "/" + filename);// 파일선택
			Path mf = Paths.get(img);// 폴더로
			Files.copy(f, mf.resolve(f.getFileName()));

		} else if (hwak.equals(b[0]) || hwak.equals(b[1]) || hwak.equals(b[2]) || hwak.equals(b[3])
				|| hwak.equals(b[4])) {
			File file = new File(music);
			if (!file.exists()) {
				file.mkdirs();
			}
			Path f = Paths.get(path + "/" + filename);// 파일선택
			Path mf = Paths.get(music);// 폴더로
			Files.copy(f, mf.resolve(f.getFileName()));

		} else if (hwak.equals(c[0]) || hwak.equals(c[1]) || hwak.equals(c[2]) || hwak.equals(c[3])) {
			File file = new File(doc);
			if (!file.exists()) {
				file.mkdirs();
			}
			Path f = Paths.get(path + "/" + filename);// 파일선택
			Path mf = Paths.get(doc);// 폴더로
			Files.copy(f, mf.resolve(f.getFileName()));

		} else if (hwak.equals("txt")) {
			BufferedReader br = new BufferedReader(new FileReader(path + "/" + filename));
			String readLine = null;

			while ((readLine = br.readLine()) != null) {
				arr.add(readLine + "\n");
			}
			br.close();
			lyrics += "/" + arr.get(1).trim() + "/" + arr.get(2).trim();
			File file = new File(lyrics);
			if (!file.exists()) {
				file.mkdirs();
			}
			Path f = Paths.get(path + "/" + filename);// 파일선택
			Path mf = Paths.get(lyrics);// 폴더로
			Files.copy(f, mf.resolve(f.getFileName()));

		} else {
			File file = new File(etc);
			if (!file.exists()) {
				file.mkdirs();
			}
			Path f = Paths.get(path + "/" + filename);// 파일선택
			Path mf = Paths.get(etc);// 폴더로
			Files.copy(f, mf.resolve(f.getFileName()));
		}
	}
}