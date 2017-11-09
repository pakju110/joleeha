/*package lee;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;

public class movieDAOTest {

	@Before
	public void setUp() throws Exception {
	}

	
	
	@Test
	public void testDetail() throws ParseException {
			
		movieVO vo = new movieDAO().detail(4);
		movieVO tt = new movieVO();
		tt.setNo(4);
		tt.setClosedate("2017-11-05");
		tt.setContent("¤¾¤·¤¾¤·");
		tt.setGenre("action/horror/romance");
		tt.setOrifile("4b.jpg");
		tt.setSysfile("4b1.jpg");
		tt.setReldate("2017-08-01");
		tt.setTitle("¾¾»¡");
		
		String from = "17/11/06 21:18:12";
		SimpleDateFormat tf = new SimpleDateFo
		rmat("yyyy-MM-dd HH:mm:ss");
		Date date = tf.parse(from);
		
		tt.setRegdate(date);
		
		
		assertEquals(tt, vo);
	}

}
*/