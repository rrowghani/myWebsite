package com.rezarowghani.controllers;

import com.amazonaws.auth.InstanceProfileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailService;
import com.amazonaws.services.simpleemail.AmazonSimpleEmailServiceClientBuilder;
import com.amazonaws.services.simpleemail.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Objects;

@Controller
public class ContactMe extends ControllerParent{

    // Replace recipient@example.com with a "To" address. If your account
    // is still in the sandbox, this address must be verified.
    static final String TO = "reza.rowghani@gmail.com";
    static final String FROM = "info@rezarowghani.com";
    // The subject line for the email.
    static final String SUBJECT = "Message from a user from your website";

    @RequestMapping(value = "/sendEmail", params = {"name", "email", "message"})
    public ModelAndView sendEmail(
            @RequestParam(value = "name") String name,
            @RequestParam(value = "email") String email,
            @RequestParam(value = "message") String message
    ) {

        try {

            AmazonSimpleEmailServiceClientBuilder amazonSimpleEmailServiceClientBuilder = AmazonSimpleEmailServiceClientBuilder.standard()
                    // Replace US_WEST_2 with the AWS Region you're using for
                    // Amazon SES.
                    .withRegion(Regions.EU_NORTH_1);
            AmazonSimpleEmailService client = Objects.equals(System.getenv("ENVIRONMENT"), "PRODUCTION") ? amazonSimpleEmailServiceClientBuilder.withCredentials(InstanceProfileCredentialsProvider.getInstance()).build() : amazonSimpleEmailServiceClientBuilder.build();

            String emailBody = "Name: " + name + "\n" +
                    "Email: " + email + "\n" +
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
                    .withSource(FROM);
            client.sendEmail(request);
            System.out.println("Email sent!");
        } catch (Exception ex) {
            System.out.println("The email was not sent. Error message: "
                    + ex.getMessage());
            return new ModelAndView("redirect:/actionResult?result=failure");
        }
        return new ModelAndView("redirect:/actionResult?result=success");
    }

    @Override
    protected String setControllerType() {
        return "contactMe";
    }

    @RequestMapping(value = "/actionResult", params = {"result"})
    public String printResult(
            @RequestParam(value = "result") String result,
            Model model
    ) {
        model.addAttribute("result", result);
        return "actionResult";
    }
}
