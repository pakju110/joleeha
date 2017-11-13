package test;

import static org.junit.Assert.*;

import org.junit.Test;

import junit.framework.TestCase;
import movie.ReviewDAO;
import movie.ReviewVO;

public class ReviewDAOTest extends TestCase {

	private void assertTrue(ReviewVO detail) {
		// TODO Auto-generated method stub

	}

	ReviewVO vo = (ReviewVO) new ReviewDAO().detail(0);

	@Test
	public void testDetail() {
		assertTrue((ReviewVO) new ReviewDAO().detail(0) != null);
		assertTrue(vo != null);
		equals(vo.getCate() == "first");
		equals(vo.getNo() == 0);
		equals(vo.getId() == "cc");
		equals(vo.getContent() == "しけいしけしけいしいしいしい");
		equals(vo.getMovietitle() == "悪原欠");
	}

}
