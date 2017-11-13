package req1;

import java.io.File;

public class MFile {

	void fileDelete(String k )
	{
		if(k!=null && !k.equals("")&& !k.equals("null"))
		{
			File ff = new File("C:\\projwork\\joleeha\\WebContent\\jolee\\file\\"+k);
			ff.delete();
		}
	}

	void fileDelete2(NoticeVO vo )
	{
		if(vo.sysfile!=null && !vo.sysfile.equals("")&& !vo.sysfile.equals("null"))
		{
			File ff = new File(vo.path+"\\"+vo.sysfile);
			ff.delete();
		}
	}
}
