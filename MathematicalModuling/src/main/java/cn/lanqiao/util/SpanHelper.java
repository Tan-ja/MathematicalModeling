package cn.lanqiao.util;

import java.util.ArrayList;
import java.util.List;

public class SpanHelper {
	private static List<String> spans = new ArrayList<String>();
	private static int currentCount = 0;
	public static void addSpan(String span) {
		spans.add(span);
		currentCount++;
	}
	public static void deleteSpan() {
		if (spans.size() > 0) {	
			spans.remove(currentCount - 1);
			currentCount--;
		}
	}
	public static String getSpan() {
		String sp = null;
		if (spans.size() > 0) {
			sp = spans.get(currentCount - 1);
			deleteSpan();
		}
		return sp;
	}
	public static void clearAll() {
		spans.clear();
	}
}
