package com.rezarowghani.controllers;

import com.rezarowghani.dao.PictureDao;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Pictures {

    PictureDao pictureDao;

    public Pictures(PictureDao pictureDao) {
        this.pictureDao = pictureDao;
    }

    @RequestMapping(value = "/pictures", params = {"category"})
    public String getPicture(@RequestParam(value = "category") String category, Model model) {
        model.addAttribute("pictures", pictureDao.retrievePicturesByCategory(category));
        return "pictures";
    }
}
