package cn.lanqiao.service.impl;

import java.io.BufferedReader;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class InfoUtil{
	private List<String> allContent = new ArrayList<String>();
	private String spci = "<i class=\"fa fa-thumbs-o-up\"></i>";
	private String start = "<span";
	private String end = "</span>";
	public InfoUtil() {}
	public void test() throws IOException {
		String mediumValue = null;
		String value = null;
		// 存放网页中的所有内容
		int firstStart = -1;
		int firstEnd = -1;
		int lastStart = -1;
		int lastEnd = -1;
		File file = new File("E:\\数学建模网页内容\\modeling.txt"); // 数据源
		BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		while ((value = buffer.readLine()) != null) {
			if (value.contains(spci)) { // 包含特殊符号
				writeToFile(value.replace("\n", ""));
			}
			if (!value.contains(start) && !value.contains(end)) {
				if (mediumValue != null) {
					mediumValue += value;
				}
			}
			if (value.contains(start) && value.contains(end)) {
				firstStart = value.indexOf(start);
				lastStart = value.lastIndexOf(start);
				firstEnd = value.indexOf(end);
				lastEnd = value.lastIndexOf(end);
				if (lastEnd > lastStart) {
					if (firstStart == lastStart && firstEnd == lastEnd) { // <span></span>
						writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
						continue;
					}
					if (firstStart != lastStart && firstEnd != lastEnd && firstEnd > firstStart) { // <span></span>...<span></span>
						writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
						continue;
					}
					if (firstEnd != lastEnd && firstStart == lastStart && firstEnd < firstStart) { // </span><span></span>
						mediumValue += value.substring(0, value.indexOf(">", firstEnd + 1) + 1);
						writeToFile(mediumValue.replace("\n", ""));
						writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
						continue;
					}
					if (firstStart != lastStart && firstEnd != lastEnd && firstEnd < firstStart) { // </span><span></span>...<span></span>
						String con = value.substring(0, value.indexOf("<span"));
						mediumValue += value.substring(0, value.indexOf(">", firstEnd + 1) + 1);
						writeToFile(mediumValue.replace("\n", ""));
						mediumValue = "";
						writeToFile(value.substring(value.indexOf(start), value.indexOf(">", lastEnd + 1) + 1));
					}
					if (firstEnd != lastEnd && firstStart == lastStart && firstEnd < firstStart) { // </span></span>...</span><span></span>
						String con = value.substring(0, value.indexOf("<span"));
						List<Integer> span = new ArrayList<Integer>();
						int index = -1;
						while ((index = con.indexOf(end) + 1) != -1) {
							span.add(index);
						}
						if (span.size() > 1) {
							mediumValue += value.substring(0, value.indexOf(">", span.get(span.size() - 1) + 1) + 1);
							writeToFile(mediumValue.replace("\n", ""));
							writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
							continue;
						}
					}
					if (firstStart != lastStart && firstEnd != lastEnd && firstEnd < firstStart) { // </span></span>...</span><span></span>...<span></span>
						mediumValue += value.substring(0, value.indexOf(">", firstEnd + 1) + 1);
						writeToFile(mediumValue.replace("\n", ""));
						writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
						continue;
					}
				} else {
					if (firstStart == lastStart && firstEnd == lastEnd) { // </span><span>
						mediumValue += value.substring(0, value.indexOf(">", firstEnd + 1) + 1);
						writeToFile(mediumValue.replace("\n", ""));
						mediumValue = "";
						mediumValue = value.substring(firstStart);
						continue;
					}
					if (firstStart != lastStart && firstEnd != lastEnd && firstEnd < firstStart) { // </span><span></span><span>
						mediumValue += value.substring(0, value.indexOf(">", firstEnd + 1) + 1);
						writeToFile(mediumValue.replace("\n", ""));
						writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
						mediumValue = "";
						mediumValue = value.substring(lastStart);
						continue;
					}
					if (firstStart != lastStart && firstEnd == lastEnd) { // <span></span><span
						writeToFile(value.substring(firstStart, value.indexOf(">", firstEnd + 1) + 1).replace("\n", ""));
						mediumValue = value.substring(lastStart);
						continue;
					}
					if (firstStart != lastStart && firstEnd != lastEnd && firstStart < firstEnd) { // <span></span><span></span><span>
						writeToFile(value.substring(firstStart, value.indexOf(">", lastEnd + 1) + 1).replace("\n", ""));
						mediumValue = value.substring(lastStart);
						continue;
					}
				}
			}
			if (value.contains(start) && !value.contains(end)) { 
				firstStart = value.indexOf(start);
				lastStart = value.indexOf(start);
				if (firstStart == lastStart) { // <span>
					mediumValue = value.substring(firstStart);
					continue;
				}
				if (firstStart != lastStart) { // <span><span>...
					mediumValue = value.substring(firstStart);
					continue;
				}
			}
			if (value.contains(end) && !value.contains(start)) {
				firstEnd = value.indexOf(end);
				lastEnd = value.indexOf(end);
				if (firstEnd == lastEnd) { // </span>
					mediumValue += value.substring(0, value.indexOf(">", firstEnd + 1) + 1);
					writeToFile(mediumValue);
					mediumValue = "";
					continue;
				}
				if (firstEnd != lastEnd) { // </span></span>...</span>
					mediumValue += value.substring(0, value.indexOf(">", lastEnd + 1) + 1);
					writeToFile(mediumValue);
					mediumValue = "";
					continue;
				}
			}
		}
		buffer.close();
		filter(new File("E:\\数学建模网页内容\\allspans.txt"));
		getResult();
	}
	// 将网页中的所有<span>标签写入新文件中 
	public void writeToFile(String content) throws IOException {
		if (content == null) {
			return;
		}
		File file = new File("E:\\数学建模网页内容\\allspans.txt");
		BufferedWriter buffer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true)) );	
		buffer.write(content + "\n");
		buffer.close();	
	}
	// 对网页内容进行过滤
	public void filter(File file) throws IOException {
		boolean isContainr = false;
		File fileTea = new File("E:\\数学建模网页内容\\afterfilter.txt");
		if (file == null) {
			return;
		}
		BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileTea, true)));
		String value = null;
		while ((value = buffer.readLine()) != null) {
			if (value.contains("基本信息") || value.contains(spci) || value.contains("个人简历")) {
				isContainr = true;
				writer.write(value + "\n");
				continue;
			}
			if (isContainr) {
				writer.write(value + "\n");
			}
		}
		writer.close();
		buffer.close();
	}
	public void getResult() throws IOException {
		List<Integer> index = new ArrayList<Integer>();
		int start = -1;
		File inFile = new File("E:\\数学建模网页内容\\afterfilter.txt");
		File outFile = new File("E:\\数学建模网页内容\\allspandata.txt");
		String medium = null;
		String value = null;
		StringBuilder builder = new StringBuilder();
		BufferedReader inBuffer = new BufferedReader(new InputStreamReader(new FileInputStream(inFile)));
		BufferedWriter outBuffer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile, true)));
		while ((value = inBuffer.readLine()) != null) {
			while ((start = value.indexOf("<span", start + 1)) != -1) {
				index.add(start);
			}
			if (index.size() == 1) {
				medium = value.substring(value.indexOf(">", index.get(0)) + 1, value.indexOf(end, index.get(0) + 1));
				if (medium.contains("&nbsp;")) {
					medium = medium.replace(medium.substring(medium.indexOf("&"), medium.lastIndexOf(";") + 1), "");
				}
				// 问题
				if (medium.contains("<br />")) {
					medium = medium.replace(medium.substring(medium.indexOf("<br"), medium.lastIndexOf("/>") + 2), "");
				}
				if (medium.contains("<strong>")) {
					medium = medium.replace(medium.substring(medium.indexOf("<strong>"), medium.indexOf("<strong>") + 8), "");
				}
				if (medium.contains("</strong>")) {
					medium = medium.replace(medium.substring(medium.indexOf("</strong>"), medium.indexOf("</strong>") + 9), "");
				}
				medium += "\n";
				this.allContent.add(medium);
			}
			if (index.size() > 1){
				for (int i = 0;i < index.size();i++) {
					medium = value.substring(value.indexOf(">", index.get(i)) + 1, value.indexOf(end, index.get(i) + 1));
					if (medium.contains("&nbsp;")) {
						medium = medium.replace(medium.substring(medium.indexOf("&"), medium.lastIndexOf(";") + 1), "");
					}
					if (medium.contains("<br />")) {
						medium = medium.replace(medium.substring(medium.indexOf("<br"), medium.lastIndexOf("/>") + 2), "");
					}
					if (medium.contains("<strong>")) {
						medium = medium.replace(medium.substring(medium.indexOf("<strong>"), medium.indexOf("<strong>") + 8), "");
					}
					if (medium.contains("</strong>")) {
						medium = medium.replace(medium.substring(medium.indexOf("</strong>"), medium.indexOf("</strong>") + 9), "");
					}
					builder.append(medium);
				}
				builder.append("\n");
				this.allContent.add(builder.toString());
				builder = new StringBuilder();
			}
			index.clear();
		}
		outBuffer.close();
		inBuffer.close();
	}
	public void testURL(String u) throws IOException {
		URL url = new URL(u);
		File file = new File("E:\\数学建模网页内容\\modeling.txt");
		if (file.exists()) {
			file.delete();
			file.createNewFile();
		} else {
			file.createNewFile();
		}
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36)");
		InputStream input = con.getInputStream();
		BufferedReader buffer = new BufferedReader(new InputStreamReader(input));
		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
		String content = null;
		while ((content = buffer.readLine()) != null) {
			writer.write(content + "\n");
		}
		test();
		writer.close();
		buffer.close();
		File[] files = new File[4];
		files[0] = new File("E:\\数学建模网页内容\\modeling.txt");
		files[1] = new File("E:\\数学建模网页内容\\allspans.txt");
		files[2] = new File("E:\\数学建模网页内容\\afterfilter.txt");
		files[3] = new File("E:\\数学建模网页内容\\allspandata.txt");
		for (int i = 0;i < files.length;i++) {
			if (files[i].exists()) {
				files[i].delete();
			} 
		}
	}
	public Map<String, List<String>> readUrlFile() throws IOException {
		File inFile = new File("E:\\数学建模网页内容\\urls.txt");
		File file = null;
		BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(inFile)));
		String content = null;
		String[] parts = null;
		List<String> teaDesc = null;
		Map<String, List<String>> allCon = new HashMap<String, List<String>>();
		while ((content = buffer.readLine()) != null) {
			parts = content.split("=");
			testURL(parts[1]);
			allCon.put(parts[0], getAllContent());
			file = new File("D:\\JAVAProjects\\MathematicalModuling\\src\\main\\resources\\teadesc\\" + parts[0] + ".txt");
			try {
				if(file.exists()) {
					file.delete();
					file.createNewFile();
				} else {
					file.createNewFile();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			teaDesc = allCon.get(parts[0]);
			writeInfoFile(file, teaDesc);
			this.allContent.clear();
		}
		buffer.close();
		return allCon;
	}
	// 将老师信息写入文件
	private void writeInfoFile(File file, List<String> list) throws IOException {
		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
		for (int i = 0;i < list.size();i++) {
			if (list.get(i) != null || !list.get(i).equals("")) {
				writer.write(list.get(i) + "\n");
			}
		}
		writer.close();
	}
	public List<String> getAllContent() {
		return allContent;
	}
}
