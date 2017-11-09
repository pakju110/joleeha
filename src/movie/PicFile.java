package movie;

import java.io.File;

public class PicFile {

	void fileDelete(ReviewVO vo )
	{
		if(vo.sysfile!=null && !vo.sysfile.equals("")&& !vo.sysfile.equals("null"))
		{
			File ff = new File(vo.path+"\\"+vo.sysfile);
			ff.delete();
		}
	}
}
