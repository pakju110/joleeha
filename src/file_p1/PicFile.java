package file_p1;

import java.io.File;

public class PicFile {

	void fileDelete(MemberVO mem )
	{
		if(mem.sysPic!=null && !mem.sysPic.equals("")&& !mem.sysPic.equals("null"))
		{
			File ff = new File(mem.path+"\\"+mem.sysPic);
			ff.delete();
		}
	}
}
