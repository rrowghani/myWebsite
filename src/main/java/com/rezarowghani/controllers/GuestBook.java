package com.rezarowghani.controllers;

import com.rezarowghani.dao.GuestBookDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GuestBook {
    private GuestBookDao guestBookDao;

    public GuestBook(GuestBookDao guestBookDao) {
        this.guestBookDao = guestBookDao;
    }

    @RequestMapping("/guestBook")
    public String getGuestBook(Model model) {
        model.addAttribute("entries", guestBookDao.getGuestBookEntries());
        return "guestBook";
    }
    @RequestMapping(value = "/addEntryGuestBook", params = {"name","message", "country"}
    )
    public String addGuestBookEntry(
            @RequestParam(value = "name") String name,
            @RequestParam(value = "message") String message,
            @RequestParam(value = "country") String country
    ) {
        guestBookDao.addEntry(name, message, country);
        return "redirect:guestBook";
    }
}
