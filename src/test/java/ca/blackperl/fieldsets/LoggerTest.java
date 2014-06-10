package ca.blackperl.fieldsets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;

public class LoggerTest {

	public class Base {
		private Log log = LogFactory.getLog(LoggerTest.Base.class);
		
		public void foo() {
			log.info("test");
		}
		public void bar() {
			log.info("test");
		}
		public void alpha() {
			log.info("test");
		}
	}

	public class Derived extends Base {
		private Log log = LogFactory.getLog(LoggerTest.Derived.class);
		
		public void foo() {
			log.info("test");
		}
		
		
	}

	public class Base2 {
		private Log log = LogFactory.getLog(this.getClass().getName());
		
		public void foo() {
			log.info("test");
		}
		public void bar() {
			log.info("test");
		}
		public void alpha() {
			log.info("test");
		}
	}

	public class Derived2 extends Base2 {
		private Log log = LogFactory.getLog(this.getClass().getName());
		
		public void foo() {
			log.info("test");
		}
		
		
	}

	@Test
	public void testName() throws Exception {
		Base b = new Base();
		Derived d = new Derived();
		
		b.foo();
		b.bar();
		b.alpha();
		
		d.foo();
		d.bar();
		d.alpha();
		
		
	}
	@Test
	public void testName2() throws Exception {
		Base2 b = new Base2();
		Derived2 d = new Derived2();
		
		b.foo();
		b.bar();
		b.alpha();
		
		d.foo();
		d.bar();
		d.alpha();
		
		
	}
}
