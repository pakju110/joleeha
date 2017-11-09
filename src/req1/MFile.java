package req1;

import java.io.File;

public class MFile {

	void fileDelete(MemberVO mem )
	{
		if(mem.sysfile!=null && !mem.sysfile.equals("")&& !mem.sysfile.equals("null"))
		{
			File ff = new File(mem.path+"\\"+mem.sysfile);
			ff.delete();
		}
	}

}
