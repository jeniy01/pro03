package kr.go.gp.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;

public class TestCase0 {
	
	/*@Before
	public void testClass() {
		System.out.println("아직 클래스 전입니다.");
	}*/
	
	@Before
	public void testBefore() {
		System.out.println("아직 테스트 전입니다.");
	}

	@Test
	public void test1() {
		System.out.println("테스트1 입니다.");
		//fail("Not yet implemented");
	}

	@Test
	public void test2() {
		System.out.println("테스트2 입니다.");
		//fail("Not yet implemented");
	}
	
	@After
	public void tearAfter() throws Exception {
		System.out.println("테스트 후 입니다.");
		//fail("Not yet implemented");
	}
	
	/*@AfterClass
	public void tearClass2() throws Exception {
		System.out.println("클래스 후 입니다.");
	}*/
}
