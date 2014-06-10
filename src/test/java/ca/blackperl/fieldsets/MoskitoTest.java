package ca.blackperl.fieldsets;

import static org.junit.Assert.*;

import org.junit.Test;

public class MoskitoTest {

	@Test
	public void test() {
		try {
			Class<?> forName = Class.forName("net.anotheria.moskito.core.accumulation.AccumulatedValue");
			
		} catch (ClassNotFoundException e) {
			fail("Unexpected expection " + e);
		}
	}

}
