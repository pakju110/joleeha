package lee;

import java.io.File;

public class PicFile {

	public void fileDelete(String k)
	{
		if(k!=null &&!k.equals("")&& !k.equals("null"))
		{
			File ff = new File("C:\\projwork\\joleeha\\WebContent\\jolee\\file\\"+k);
			ff.delete();
		}
	}
}
