package com.dovene.tripbook.controller;


import com.dovene.tripbook.service.DashboardService;
import com.dovene.tripbook.repository.TripRepository;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping(value={"/", "dashboard"})
@Transactional
public class DashboardController {

    @Autowired
    DashboardService dashboardService;

    @GetMapping
    public String list(HttpSession session, Model model) {
        model.addAttribute("dashboardDatas", dashboardService.getTripsReportData());
        return "report/dashboard";
    }


    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
}
