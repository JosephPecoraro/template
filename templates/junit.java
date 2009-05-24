import junit.framework.TestCase;
import org.junit.After;
import org.junit.Before;

/**
 * JUnit Tests
 * @author Joseph Pecoraro
 */
public class TestKlass extends TestCase {

	/**
	 * Setup Details before Running tests
	 */
	@Before
	public void setUp() throws Exception {
		System.out.println("Setup");
	}


	/**
	 * Tear Down Details after Running tests
	 */
	@After
	public void tearDown() throws Exception {
		System.out.println("Setup");
	}


	/**
	 * Test a method.
	 */
	public void testMethod() {
		assertTrue(true);
	}

}
