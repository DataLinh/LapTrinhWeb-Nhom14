/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.util;

import com.mycompany.nhom14.cuoiky.entities.CartItem;

import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.Category;
import com.mycompany.nhom14.cuoiky.entities.Discount;
import com.mycompany.nhom14.cuoiky.entities.Feedback;
import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;

import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtility {


    public static boolean sendEmail(final String email,
    		final String password,String toAddress,
    		String subject,String message) throws AddressException, MessagingException {
        Properties properties=new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", 587);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        
        Authenticator auth= new Authenticator() {
        	public PasswordAuthentication getPasswordAuthentication() {
        		return new PasswordAuthentication(email,password);
        	}
        };
        Session session=Session.getInstance(properties,auth);
        Message msg=new MimeMessage(session);
        msg.setFrom(new InternetAddress(email));
        InternetAddress[] toAddresses= {new InternetAddress(toAddress)};
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(message);
        try {
        	Transport.send(msg);
        }catch(Exception e)
        {
        	return false;
        }
    	return true;
    }
    public static String getRandom() {
    	Random rnd=new Random();
    	int number=rnd.nextInt(999999);
    	return String.format("%06d", number);
    }
}
