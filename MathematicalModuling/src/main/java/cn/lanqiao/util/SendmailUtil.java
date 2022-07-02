package cn.lanqiao.util;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class SendmailUtil {
	public static void sendEmail(String toEmailAddress, String emailTitle, String emailContent) throws Exception{
		//发送一封简单格式的邮件;
		Email email = new SimpleEmail();
		//设置发送邮件的服务器
		email.setHostName("smtp.qq.com");
		email.setSmtpPort(25);
		//身份验证
		email.setAuthentication("2497662216", "topadjmnqetxdica");
		try {
		    //邮件主题; 
		    email.setSubject(emailTitle);
		    //设置发件人;
		    email.setFrom("2497662216@qq.com","竞赛推送");
		    //设置收件人;
		    email.addTo(toEmailAddress); 
		    //设置正文;
		    email.setMsg(emailContent);
		    email.send();
		} catch (EmailException e) {
		    e.printStackTrace();
		}
	}
}
