package com.rezarowghani.controllers;

import com.amazonaws.auth.InstanceProfileCredentialsProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailService;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailServiceClientBuilder;
import com.amazonaws.services.simpleemail.model.Body;
import com.amazonaws.services.simpleemail.model.Content;
import com.amazonaws.services.simpleemail.model.Destination;
import com.amazonaws.services.simpleemail.model.Message;
import com.amazonaws.services.simpleemail.model.SendEmailRequest;
import com.amazonaws.regions.Regions;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Objects;

@Controller
public class ContactMe {

    // Replace recipient@example.com with a "To" address. If your account
    // is still in the sandbox, this address must be verified.
    static final String TO = "reza.rowghani@gmail.com";
    static final String FROM = "info@rezarowghani.com";
    // The subject line for the email.
    static final String SUBJECT = "Message from a user from your website";

    @RequestMapping(value = "/sendEmail", params = {"name", "email", "message"})
    public String sendEmail(
            @RequestParam(value = "name") String name,
            @RequestParam(value="email") String email,
            @RequestParam(value = "message") String message
    )  {

        try {

            AmazonSimpleEmailServiceClientBuilder amazonSimpleEmailServiceClientBuilder = AmazonSimpleEmailServiceClientBuilder.standard()
                    // Replace US_WEST_2 with the AWS Region you're using for
                    // Amazon SES.
                    .withRegion(Regions.EU_NORTH_1);
            AmazonSimpleEmailService client = Objects.equals(System.getenv("ENVIRONMENT"), "PRODUCTION") ? amazonSimpleEmailServiceClientBuilder.withCredentials(InstanceProfileCredentialsProvider.getInstance()).build() : amazonSimpleEmailServiceClientBuilder.build();

            String emailBody = "Name: " + name + "\n" +
                    "Email: "  + email + "\n" +
                    "Message: " + message;

            SendEmailRequest request = new SendEmailRequest()
                    .withDestination(
                            new Destination().withToAddresses(TO))
                    .withMessage(new Message()
                            .withBody(new Body()
                                    .withText(new Content()
                                            .withCharset("UTF-8").withData(emailBody)))
                            .withSubject(new Content()
                                    .withCharset("UTF-8").withData(SUBJECT)))
                    .withSource (FROM);
            client.sendEmail(request);
            System.out.println("Email sent!");
        } catch (Exception ex) {
            System.out.println("The email was not sent. Error message: "
                    + ex.getMessage());
        }
        return "contactMe";
    }


}
