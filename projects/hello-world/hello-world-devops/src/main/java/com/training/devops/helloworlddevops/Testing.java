package com.training.devops.helloworlddevops;

import java.util.Vector;

public class Testing {
	public static void main(String[] args) {
		Vector<String> ls = new Vector();
		for(int i=0;i<15;i++) {
			ls.add(""+i);
		}
		System.out.println(ls);
		for(int i=0;i<7;i++) {
			ls.remove(i);
		}
		System.out.println(ls.size());
		System.out.println(ls.capacity());
	}

}
