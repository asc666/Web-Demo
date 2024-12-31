package de.ascdev.demo.helloworldwebapp;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class FooTest {
	
	@Test
	public void testDoSomething() {
		
		Foo sut = new Foo();
		String result = sut.doSomething("TEXT");
		assertTrue(result.equals("###TEXT###"));
		
	}
	
	@Test
	public void testBar() {
		Foo sut = new Foo();
		sut.bar();
	}

}
