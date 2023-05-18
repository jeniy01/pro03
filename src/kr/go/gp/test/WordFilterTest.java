package kr.go.gp.test;

import kr.go.gp.util.WordFilter;

import org.junit.Test;

public class WordFilterTest{
	WordFilter ft = new WordFilter();
	
	@Test
	public void test(){
		if(ft.compare("너무 힘들어요~")){
			System.out.println("해당 문장에 금지어가 포함되어 있어 글을 쓰실 수 없습니다.");
		} else{
			System.out.println("해당 문장에 금지어가 없습니다.");
		}
	}
}