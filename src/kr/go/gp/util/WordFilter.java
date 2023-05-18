package kr.go.gp.util;

public class WordFilter {
	private String[] list = { "시발", "씨발", "개새끼", "병신" };
	
	public boolean compare(String keyword){
		boolean k = false;
		for(String w : list){
			if(keyword.contains(w)){
				k = true;
			}
		}
		return k;
	}
}
