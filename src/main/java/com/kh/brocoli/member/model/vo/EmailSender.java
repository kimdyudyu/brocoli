package com.kh.brocoli.member.model.vo;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;

@Controller
public class EmailSender  {
	@Autowired
    private JavaMailSender  mailSender;
	
    public void SendEmail(Email email) throws Exception {
    	System.out.println("email::::"+email);
    	MimeMessage msg = mailSender.createMimeMessage();

        System.out.println("****메일센더 ??");

        try {

            msg.setSubject(email.getSubject());

            msg.setText(email.getContent());

            msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));

           

        }catch(MessagingException e) {

            System.out.println("MessagingException");

            e.printStackTrace();

        }

        try {

            mailSender.send(msg);

        }catch(MailException e) {

            System.out.println("MailException발생");

            e.printStackTrace();

        }

    }



}
