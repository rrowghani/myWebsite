package com.rezarowghani.controllers;

import com.rezarowghani.dao.PictureDao;
import com.rezarowghani.entities.Picture;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
@ControllerAdvice
public class Pictures extends ControllerParent {
    @Override
    protected String setControllerType() {
        return "pictures";
    }

    PictureDao pictureDao;

    public Pictures(PictureDao pictureDao) {
        this.pictureDao = pictureDao;
    }

    @RequestMapping(value = "/singlePicture")
    public String getPicture(@RequestParam(value = "path") String path,
                             @RequestParam(value = "category") String category,
                             @RequestParam(value = "scrollAmount") double scrollAmount,
                             @RequestParam(value = "picsSwitch") String picsSwitch,
                             Model model) {

        model.addAttribute("path", path);
        model.addAttribute("picsSwitch", Objects.equals(picsSwitch, "true"));
        model.addAttribute("scrollAmount", scrollAmount);
        model.addAttribute("category", category);
        return "picture";

    }

    @RequestMapping(value = "/pictures")
    public String getPicture(@RequestParam(value = "category") String category,
                             @RequestParam("picsSwitch") Optional
                                     <String> picsSwitchOption,
                             @RequestParam("scrollAmount") Optional<Double> scrollAmountOption,
                             Model model) {
        Double scrollAmount = scrollAmountOption.orElse(0.0);
        String picsSwitch = picsSwitchOption.orElse("false");

        model.addAttribute("picsSwitch", Objects.equals(picsSwitch, "true"));
        model.addAttribute("scrollAmount", scrollAmount);
        model.addAttribute("category", category);

        List<String> retrieveSubCategories = pictureDao.retrieveSubCategories(category);

        List<Picture> picturesFromDatabase = pictureDao.retrievePicturesByCategory(category);
        Map<String, List<Picture>> picturesBySubCategory = new HashMap<>();
        retrieveSubCategories.forEach((subCat) -> {
            picturesBySubCategory.put(subCat, picturesFromDatabase.stream().filter((picture) -> picture.getSubCategory().equals(subCat)).toList());
        });
        model.addAttribute("pictures", picturesBySubCategory);
        return "pictures";
    }
}
