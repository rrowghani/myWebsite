package com.rezarowghani.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

public abstract class ControllerParent {
    protected String controllerType;

    public ControllerParent() {
        this.controllerType = setControllerType();
    }

    protected abstract String setControllerType();

    @ModelAttribute
    public final void addAttributes(Model model) {
        model.addAttribute("page", controllerType);
    }
}
