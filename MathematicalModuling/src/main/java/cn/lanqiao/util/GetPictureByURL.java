package cn.lanqiao.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class GetPictureByURL {
	public static void main(String[] args) throws Exception {
		String[] urls = {
				"http://www.glutsm.com/upload/2019-03-22/thumb_f7df163cd4f27a6555a2962ac62258d2.png",
				"http://www.glutsm.com/upload/2017-10-10/thumb_af96e770023d36fe538066ccfdf3f33a.png",
				"http://www.glutsm.com/upload/2017-09-04/thumb_2f710fafee4b3fa52b776615181b092a.png",
				"http://www.glutsm.com/upload/2017-09-04/thumb_c9302c8284a4a058f243cc4b0fb989fe.png",
				"http://www.glutsm.com/upload/2017-09-03/thumb_c6f206488046599298a3a1d2dc5332c7.png",
				"http://www.glutsm.com/upload/2017-09-04/thumb_b743920b345fcccf060d0f20bc5dae4b.png",
				"http://www.glutsm.com/upload/2017-10-11/thumb_e206e18c4c92770fa75610b64488d478.png",
				"http://www.glutsm.com/upload/2017-09-04/thumb_e4823372eeee2a13a3a49d8630e1e4e9.png",
		};
		InputStream input = null;
		OutputStream output = null;
		File outFile = new File("E:/math/images/宣传视频");
		if (!outFile.exists()) {
			outFile.mkdirs();
		}
		for (int i = 0;i < urls.length;i++) {
			URL url = new URL(urls[i]);
			url.openConnection();
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoInput(true);  
			conn.setRequestMethod("GET");  
			conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
			File inFile = new File(url.getFile());
			File outPutFile = new File(outFile, inFile.getName());
			if (!outPutFile.exists()) {
				outPutFile.createNewFile();
			}
			input = conn.getInputStream();
			output = new FileOutputStream(outPutFile);
			byte[] array = new byte[1024];
			while ((input.read(array, 0, array.length)) != -1) {
				output.write(array);
			}
		}
		output.close();
		input.close();
	}
}
