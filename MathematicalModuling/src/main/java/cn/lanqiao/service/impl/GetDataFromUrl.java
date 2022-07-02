package cn.lanqiao.service.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class GetDataFromUrl {
	@Autowired
	private InfoUtil infoUtil;
	private Map<String, List<String>> allContent = new HashMap<String, List<String>>();
	public Map<String, List<String>> test() {
//		try {
//			File inFile = new File("E:\\数学建模网页内容\\urls.txt");
//			BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(inFile)));
//			String content = null;
//			String[] parts = null;
//			while ((content = buffer.readLine()) != null) {
//				parts = content.split("=");
//				infoUtil.testURL(parts[1]);
//				allContent.put(parts[0], infoUtil.getAllContent());
//			}
//			buffer.close();
//			File[] files = new File[3];
//			files[0] = new File("E:\\数学建模网页内容\\modeling.txt");
//			files[1] = new File("E:\\数学建模网页内容\\allspans.txt");
//			files[2] = new File("E:\\数学建模网页内容\\afterfilter.txt");
//			for (int i = 0;i < files.length;i++) {
//				if (files[i].exists()) {
//					files[i].delete();
//				} 
//			}
//			return allContent;
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		try {
			allContent = infoUtil.readUrlFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return allContent;
	}
}
