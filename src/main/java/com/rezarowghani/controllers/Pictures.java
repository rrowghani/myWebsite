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
public class Pictures extends ControllerParent{
    @Override
    protected String setControllerType() {
        return "pictures";
    }

    PictureDao pictureDao;

    public Pictures(PictureDao pictureDao) {
        this.pictureDao = pictureDao;
    }

    @RequestMapping(value="/singlePicture")
    public String getPicture(@RequestParam(value="path") String path,
                             @RequestParam(value="category") String category,
                             Model model) {
        model.addAttribute("path", path);
        model.addAttribute("category", category);
        System.out.println(path);
        System.out.println(category);
        return "picture";

    }
    @RequestMapping(value = "/pictures")
    public String getPicture(@RequestParam(value = "category") String category,
                             @RequestParam("picsSwitch") Optional
                                     <String> picsSwitchOption,
                             Model model) {
        String picsSwitch = picsSwitchOption.orElse("false");
        model.addAttribute("picsSwitch", Objects.equals(picsSwitch, "true"));
        model.addAttribute("category", category);

        List<String> retrieveSubCategories = pictureDao.retrieveSubCategories(category);
        System.out.println(retrieveSubCategories);
        List<Picture> picturesFromDatabase = pictureDao.retrievePicturesByCategory(category);
        Map<String, List<Picture>> picturesBySubCategory = new HashMap<>();
        retrieveSubCategories.forEach((subCat)-> {
            picturesBySubCategory.put(subCat, picturesFromDatabase.stream().filter((picture) -> picture.getSubCategory().equals(subCat)).toList());
        });
        //System.out.println(Arrays.toString(picturesFromDatabase.stream().filter(picture -> Objects.nonNull(picture.getSubCategory())).toArray()));
        //System.out.println(picturesFromDatabase.stream().filter((picture) -> picture.getSubCategory() != null).toList());
        System.out.println(picturesBySubCategory);
        model.addAttribute("pictures", picturesBySubCategory);
        return "pictures";
    }
}
